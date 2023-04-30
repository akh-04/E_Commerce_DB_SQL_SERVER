-- iF DATABASE EXISTS, DROP
IF EXISTS (SELECT name FROM sys.databases WHERE name = N'project')
    DROP DATABASE [project]
GO

CREATE DATABASE [project]
go
USE [project]
GO


--1) CREATE TABLE CUSTOMER

CREATE TABLE [dbo].[customer](
	[customer_ID] int NOT NULL,
	[customer_name] [varchar](25) NOT NULL,
	[customer_DOB] [date] NOT NULL,
    [customer_age] AS (year(CURRENT_TIMESTAMP) - year(customer_DOB))
 CONSTRAINT [customer_PK] PRIMARY KEY CLUSTERED 
([customer_ID] ASC
)
) ON [PRIMARY]
GO

--2) CREATE TABLE ADDRESS

CREATE TABLE [dbo].[address](
	[customer_address_ID] INT NOT NULL,
	[customer_ID] int NOT NULL,
	[street] [varchar](25)  NOT NULL,
    [apt] [varchar](10)  NULL,
    [city] [varchar](50)  NOT NULL,
    [state] [varchar](2)  NOT NULL,
    [ZIPCODE] [varchar](5)  NULL,
 CONSTRAINT [address_PK] PRIMARY KEY ([customer_address_ID] ASC),
 CONSTRAINT [address_FK] FOREIGN KEY (customer_ID) REFERENCES customer(customer_ID)
) ON [PRIMARY]
GO

-- 3) creating table product category
CREATE TABLE [dbo].[product_category] (
    [category_ID] INT NOT NULL,
    [category_name] [varchar] (50) NOT NULL,
    [category_description] [varchar] (50) NULL,
    CONSTRAINT [category_pk] PRIMARY KEY CLUSTERED
    ([category_ID] ASC)
) ON [PRIMARY]
GO


-- 4) creating table product
CREATE TABLE [dbo].[product](
    [product_ID] int NOT NULL,
    [product_name] [varchar] (25) NOT NULL,
    [product_description] [varchar] (150) NULL,
    [price] [DECIMAL] (6,2) NULL,
    [availability] [int] NOT NULL,
    [category_ID] INT NULL,
    CONSTRAINT [product_PK] PRIMARY KEY CLUSTERED 
    ([product_ID] ASC),
    CONSTRAINT [product_FK] FOREIGN KEY (category_ID) REFERENCES [product_category](category_ID)
) ON [PRIMARY]
GO


--5) CREATE TABLE ORDERS

CREATE TABLE [dbo].[orders](
    [order_ID] int NOT NULL,
    [customer_ID] INT NOT NULL,
	[product_ID] INT NOT NULL,
	[order_date] [date] NOT NULL,
    CONSTRAINT [order_PK] PRIMARY KEY CLUSTERED ([order_ID] ASC),
    CONSTRAINT [orders_FK_1] FOREIGN KEY (customer_ID) REFERENCES customer(customer_ID),
    CONSTRAINT [orders_FK2] FOREIGN KEY (product_ID) REFERENCES product(product_ID)
)
GO

--6) CREATE PAYMENT TABLE

--Create database master key
CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'YourPassword123';

--Create a certificate to protect the symmetric key
CREATE CERTIFICATE MyCertificate WITH SUBJECT = 'Certificate for TDE';

--Create the symmetric key with an algorithm
CREATE SYMMETRIC KEY MySymmetricKey WITH ALGORITHM = AES_256 ENCRYPTION BY CERTIFICATE MyCertificate;

CREATE TABLE [dbo].[payment](
    [payment_ID] int NOT NULL,
    [order_ID] INT NOT NULL,
    [customer_ID] int NOT NULL,
	[payment_method] [char](20) NOT NULL,
    [card_number] varbinary(256) DEFAULT ENCRYPTBYKEY(KEY_GUID('MySymmetricKey'), 'card_number'),
CONSTRAINT [payment_PK] PRIMARY KEY([payment_ID] ASC),
CONSTRAINT [payment_FK_1] FOREIGN KEY (customer_ID) REFERENCES customer(customer_ID),
CONSTRAINT [payment_FK_2] FOREIGN KEY (order_ID) REFERENCES orders(order_ID))
GO

--7) CREATE TABLE ORDER QUANTITY
CREATE TABLE [dbo].[order_qty](
    [order_ID] int NOT NULL,
    [product_ID] int NOT NULL,
	[QUANTITY] [INTEGER] NOT NULL,
 CONSTRAINT [order_qty_PK] PRIMARY KEY(order_ID, product_ID),
CONSTRAINT [order_qty_FK_1] FOREIGN KEY (order_ID) REFERENCES orders(order_ID),
CONSTRAINT [order_qty_FK_2] FOREIGN KEY (product_ID) REFERENCES product(product_ID)
)
GO

--8) CREATE TABLE ORDER SHIPPING COMPANY
CREATE TABLE [dbo].[shipping_company](
    [shipping_company_ID] int NOT NULL,
    [shipping_company_name] [varchar](20) NOT NULL,
    [shipping_company_address] [varchar](500) NULL,
    [shipping_cost] [INTEGER] NOT NULL,
    CONSTRAINT [shipping_company_PK] PRIMARY KEY CLUSTERED ([shipping_company_ID] ASC))
GO

--9) CREATE TABLE SHIPMENT
CREATE TABLE [dbo].[shipment](
    [tracking_ID] int NOT NULL,
    [order_ID] int NOT NULL,
    [customer_address_ID] int NOT NULL,
	[shipping_comp_ID] int NOT NULL,
 CONSTRAINT [tracking_PK] PRIMARY KEY CLUSTERED ([tracking_ID] ASC),
CONSTRAINT [shipment_FK_1] FOREIGN KEY (order_ID) REFERENCES orders(order_ID),
CONSTRAINT [shipment_FK_2] FOREIGN KEY (customer_address_ID) REFERENCES [address](customer_address_ID),
CONSTRAINT [shipment_FK_3] FOREIGN KEY (shipping_comp_ID) REFERENCES shipping_company(shipping_company_ID))
GO

-- 10) creating table product review 
CREATE TABLE [dbo].[product_review](
    [review_ID] int NOT NULL,
    [product_ID] int NOT NULL,
    [rating] [tinyint] NULL,
    [review] [varchar] (250) NULL,
    CONSTRAINT [review_PK] PRIMARY KEY CLUSTERED ([review_ID] ASC),
    CONSTRAINT [review_FK] FOREIGN KEY (product_ID) REFERENCES [product](product_ID)
) ON [PRIMARY]
GO

--11) creating table Discount
CREATE TABLE [dbo].[discount](
    [discount_ID] int NOT NULL,
    [discount_type] [varchar] (25) NULL,
    [percentage_of_discount] [decimal] (3,2) constraint chk_percentage_of_discount check ([percentage_of_discount] between 0 and 1)
    CONSTRAINT [discount_PK] PRIMARY KEY CLUSTERED ([discount_ID] ASC),
) ON [PRIMARY]
GO

--12) creating table supplier
CREATE TABLE [dbo].[supplier](
    [supplier_ID] int NOT NULL,
    [supplier_name] [varchar] (50) not NULL,
    [location] [varchar] (100) NULL,
    CONSTRAINT [supplier_PK] PRIMARY KEY CLUSTERED ([supplier_ID] ASC),
) ON [PRIMARY]
GO

-- 13) creating product_discount_relation table
CREATE TABLE [product_discount_relation](
    [product_ID] int NOT NULL,
    [discount_ID] int NOT NULL,
    [discount_value] [DECIMAL] (5,2) NULL,
    CONSTRAINT [product_discount_relation_PK] PRIMARY KEY ([product_ID], [discount_ID] ASC),
    CONSTRAINT [product_discount_relation_FK1] FOREIGN KEY (product_ID) REFERENCES [product](product_ID),
    CONSTRAINT [product_discount_relation_FK2] FOREIGN KEY (discount_ID) REFERENCES [discount](discount_ID)
) ON [PRIMARY]
GO

-- 14) creating product_supplier_relation table
CREATE TABLE [product_supplier_relation](
    [product_ID] int NOT NULL,
    [supplier_ID] int NOT NULL,
    [cost_to_supplier] [DECIMAL] (5,2) NOT NULL,
    CONSTRAINT [product_supplier_relation_PK] PRIMARY KEY ([product_ID],[supplier_ID] ASC),
    CONSTRAINT [product_supplier_relation_FK1] FOREIGN KEY (product_ID) REFERENCES [product](product_ID),
    CONSTRAINT [product_supplier_relation_FK2] FOREIGN KEY (supplier_ID) REFERENCES [supplier](supplier_ID)
 ) ON [PRIMARY]
 GO

----------------------------------------------------------------------------------------

-- non clustered index for payment method in payment table.

CREATE NONCLUSTERED INDEX Other_than_Card ON payment (payment_method); 

-- non-clustered index for address state and city

CREATE NONCLUSTERED INDEX [state_and_city] ON [address] (city, [state]);

-- non-clustered index for the date when the order is placed

CREATE NONCLUSTERED INDEX Orders_OrderDate ON orders (order_date);

-- non-clustered index for the product review based on ratings

CREATE NONCLUSTERED INDEX product_rating ON product_review (rating);

----------------------------------------------------------------------------------------

-- check constraint for ratings in product review,
ALTER TABLE product_review
ADD CONSTRAINT chk_rating CHECK (rating BETWEEN 1 AND 5);

-- check constraint for category in product category table
ALTER TABLE product_category
ADD CONSTRAINT chk_category CHECK ([category_name] in 
    ('Appliances', 'Office', 'TV & Home Theater', 'Computers & Tablets', 'Cell Phones', 'Video Games',
	 'Cameras', 'Car Electronics', 'Home', 'Wearable Technology', 'Smart Home', 'Wireless Speakers', 'Headphones',
	 'Tablets', 'Camera Drones'));
GO

-- Check Constraint for checking the states 
ALTER TABLE [dbo].[address] 
ADD CONSTRAINT [chk_state_USA] CHECK ([state] IN ('AL','AK','AZ','AR','CA','CO','CT','DE','DC','FL','GA','HI','ID','IL','IN','IA','KS','KY','LA','ME','MD','MA','MI','MN','MS','MO','MT','NE','NV','NH','NJ','NM','NY','NC','ND','OH','OK','OR','PA','RI','SC','SD','TN','TX','UT','VT','VA','WA','WV','WI','WY'));
GO
----------------------------------------------------------------------------------------

---- DML trigger preventing under age customers
CREATE TRIGGER [dbo].[prevent_underage_customers]
ON Customer
AFTER INSERT
AS
BEGIN
    IF EXISTS(SELECT 1 FROM inserted WHERE DATEDIFF(YEAR, customer_DOB, GETDATE()) < 18)
    BEGIN
        RAISERROR('Cannot add customer under 18 years old', 16, 1);
        ROLLBACK TRANSACTION;
    END;
END;
GO

-- DML trigger that updates the availability of a product whenever an order is placed for that product:

CREATE TRIGGER [dbo].[update_product_availability]
ON [dbo].[orders]
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;
    
    DECLARE @product_id CHAR(4);
    
    SELECT @product_id = product_ID FROM inserted;
    
    UPDATE [dbo].[product]
    SET [availability] = [availability] - 1
    WHERE [product_ID] = @product_id
END;
GO



-----------------------------------------------------------------------------

--Stored Prodecedures, Views, UDFs 

-----------------------------------------------------------------------------
-- Stored procedure 1: Find orders for given  customer

CREATE PROCEDURE GetCustomerOrders
    @CustomerId INT, -- input parameter for the customer ID
    @CountOrders INT OUTPUT -- output parameter for the total number of orders
AS
BEGIN
    SELECT @CountOrders = COUNT(*) FROM Orders  -- 
    WHERE Customer_Id = @CustomerId -- Counting all orders and filter the orders by the input customer ID

    SELECT order_ID, order_date, product_ID, customer_ID FROM Orders -- select all orders from the Orders table
    WHERE customer_ID = @CustomerId  -- filter the orders by the input customer ID
END
GO

--EXECUTE AFTER DEFINING Stored Procedure for GetCustomerOrders 

-- DECLARE @OrderCount INT
-- EXEC GetCustomerOrders @CustomerId = 3, @CountOrders = @OrderCount OUTPUT

-- Stored Procedure 2: For given product all supplier's list

CREATE PROCEDURE GetSuppliersProduct
    @ProductID INT, -- input parameter for the product ID
    @CountSuppliers INT OUTPUT -- output parameter for the total number of suppliers
AS
BEGIN
    SELECT @CountSuppliers = COUNT(supplier_ID) from product_supplier_relation
    where product_ID = @ProductID 

    SELECT p.product_ID, p.supplier_id, p.cost_to_supplier, s.supplier_name, s.location  -- Selecting productID and all suppliers
    FROM 
    product_supplier_relation p JOIN supplier s ON p.supplier_ID = s.supplier_ID -- Joining tables
    WHERE product_ID = @ProductId  -- filter the orders by the input product ID
END
go 

-- DECLARE @Sp_count INT
-- EXEC GetSuppliersProduct @ProductID = 3452, @CountSuppliers = @Sp_count OUTPUT

-- Stroed Procedure 3: Stored Procedures for all products available to buy in a category

CREATE PROCEDURE GetAvailProducts
    @CategoryID INT, -- input parameter for the category ID
    @Availability INT OUTPUT -- output parameter for availability
AS
BEGIN
    SELECT @Availability = p.availability FROM product p 
    WHERE p.category_ID = @CategoryId AND p.availability > 0 

    SELECT c.category_ID, c.category_name, p.product_ID, p.product_name, p.price -- Selecting category and product details
    FROM 
    product_category c JOIN product p ON c.category_ID = p.category_ID -- Joining tables
    WHERE p.category_ID = @CategoryId   -- filter by input parameter 
END
GO
-- DECLARE @Avl INT
-- EXEC GetAvailProducts @CategoryID = 0001, @Availability = @Avl OUTPUT

----------------------------------------------------------------------------------------

-- View 1: Retrieve all products with their categories
CREATE VIEW ProductsWithCategories
AS
SELECT p.Product_ID, p.Product_Name, pc.Category_Name
FROM Product p
JOIN Product_Category pc ON p.category_ID = pc.Category_ID
GO

--Select Product_ID, Product_Name, Category_Name from ProductsWithCategories

-- View 2: Retrieve the top 3 best-selling products
CREATE VIEW BestSellingProducts
AS
SELECT TOP 3 p.Product_ID, p.Product_Name, SUM(od.Quantity) AS TotalQuantitySold
FROM Product p
JOIN order_qty od ON p.product_ID = od.Product_ID
GROUP BY p.Product_ID, p.Product_Name
ORDER BY TotalQuantitySold DESC
GO

-- Select Product_ID, Product_Name, TotalQuantitySold from BestSellingProducts

-- View 3: Retrieve all customers with their total orders and total order amounts
CREATE VIEW CustomersWithOrders
AS
SELECT c.Customer_Id, c.Customer_Name, COUNT(o.Order_Id) AS TotalOrders
FROM Customer c
LEFT JOIN [Orders] o ON c.Customer_Id = o.Customer_Id
GROUP BY c.Customer_Id, c.Customer_Name
GO

-- SELECT Customer_Id, Customer_Name, TotalOrders from CustomersWithOrders

----------------------------------------------------------------------------------------
-- UDF's:

-- Function 1: Get the total amount of sales for a given product
CREATE FUNCTION GetTotalSalesForProduct
(
    @ProductId INT
)
RETURNS MONEY
AS
BEGIN
    -- Declare a variable to hold the total sales amount
    DECLARE @TotalSales MONEY
    
    -- Calculate the total sales amount for the given product by summing the unit price multiplied by the quantity sold for all orders that include that product
    SELECT @TotalSales = SUM(p.price * od.Quantity)
    FROM Order_qty od, product p
    WHERE (od.Product_Id = @ProductId AND p.Product_Id = @ProductId);
    
    -- Return the total sales amount
    RETURN @TotalSales
END
GO

-- Call Function 1: GetTotalSalesForProduct
-- SELECT product_id,dbo.GetTotalSalesForProduct(product_ID) as 'Total Sales for Product ' from [dbo].product
-- GO

-- Function 2: Get the average rating for a given product
CREATE FUNCTION GetAverageProductRating
(
    @ProductId INT
)
RETURNS DECIMAL(2,1)
AS
BEGIN
    -- Declare a variable to hold the average rating
    DECLARE @AverageRating DECIMAL(2,1)
    
    -- Calculate the average rating for the given product by taking the average of all ratings for that product in the ProductReviews table
    SELECT @AverageRating = COALESCE(AVG(r.Rating),0.0)
    FROM Product_Review r
    WHERE r.Product_Id = @ProductId
    RETURN @AverageRating
END
GO

-- Call Function 2: GetAverageProductRating
-- SELECT product_id, dbo.GetAverageProductRating(product_id) as 'Average Rating for Product' from [dbo].product
-- GO

----------------------------------------------------------------------------------------
