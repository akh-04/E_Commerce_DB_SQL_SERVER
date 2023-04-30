USE [project]
GO

--Inserting values into Customer 


INSERT INTO customer (customer_ID, customer_name, customer_DOB) VALUES (0001, 'Brad Owens', '09/25/2004')
INSERT INTO customer (customer_ID, customer_name, customer_DOB) VALUES (0002, 'Vivian Roberts', '02/02/1992')
INSERT INTO customer (customer_ID, customer_name, customer_DOB) VALUES (0003, 'Thomas Reed', '02/10/1997')
INSERT INTO customer (customer_ID, customer_name, customer_DOB) VALUES (0004, 'Sienna Morgan', '05/20/2000')
INSERT INTO customer (customer_ID, customer_name, customer_DOB) VALUES (0005, 'April Perkins', '03/23/1987')
INSERT INTO customer (customer_ID, customer_name, customer_DOB) VALUES (0006, 'Amy Craig', '11/19/1991')
INSERT INTO customer (customer_ID, customer_name, customer_DOB) VALUES (0007, 'Haris Craig', '07/10/1985')
INSERT INTO customer (customer_ID, customer_name, customer_DOB) VALUES (0008, 'Sydney Caroll', '08/05/1982')
INSERT INTO customer (customer_ID, customer_name, customer_DOB) VALUES (0009, 'Stuart Evans', '09/29/1995')
INSERT INTO customer (customer_ID, customer_name, customer_DOB) VALUES (0010, 'Fiona Howard', '02/19/2001')
INSERT INTO customer (customer_ID, customer_name, customer_DOB) VALUES (0011, 'Halsey Gates', '03/15/2002')
INSERT INTO customer (customer_ID, customer_name, customer_DOB) VALUES (0012, 'Lehigh Reed', '12/01/1998')
INSERT INTO customer (customer_ID, customer_name, customer_DOB) VALUES (0013, 'Stacey Ward', '09/11/1991')
INSERT INTO customer (customer_ID, customer_name, customer_DOB) VALUES (0014, 'Grace Menkin', '08/06/1987')
INSERT INTO customer (customer_ID, customer_name, customer_DOB) VALUES (0015, 'Yan Zhou', '07/12/1995')
INSERT INTO customer (customer_ID, customer_name, customer_DOB) VALUES (0016, 'Mark Fray', '03/30/2000')
INSERT INTO customer (customer_ID, customer_name, customer_DOB) VALUES (0017, 'Jason Tan', '04/18/1995')
INSERT INTO customer (customer_ID, customer_name, customer_DOB) VALUES (0018, 'Greta Thomas', '02/9/1981')
INSERT INTO customer (customer_ID, customer_name, customer_DOB) VALUES (0019, 'Jack Grant', '11/17/1984')
INSERT INTO customer (customer_ID, customer_name, customer_DOB) VALUES (0020, 'Lindsey James', '05/10/1991')


--Inserting values into address 


INSERT INTO [address] (customer_address_ID, customer_ID, street, apt, city, [state], ZIPCODE) VALUES (0001, 0001, 'Ryan Salem Rd', '4434', 'Golden', 'MS', '38847')
INSERT INTO [address] (customer_address_ID, customer_ID, street, apt, city, [state], ZIPCODE) VALUES (0002, 0002, 'Ratliff Rd', '1981', 'Sharpsburg', 'KY', '40374')
INSERT INTO [address] (customer_address_ID, customer_ID, street, apt, city, [state], ZIPCODE) VALUES (0003, 0003, 'Lloyd Ln', '143', 'Carrollton', 'KY', '41008')
INSERT INTO [address] (customer_address_ID, customer_ID, street, apt, city, [state], ZIPCODE) VALUES (0004, 0004, 'Palomar Dr', '3751', 'Fallbrook', 'CA', '92028')
INSERT INTO [address] (customer_address_ID, customer_ID, street, apt, city, [state], ZIPCODE) VALUES (0005, 0005, 'Sundance Rd', '14', 'Pooler', 'GA', '31322')
INSERT INTO [address] (customer_address_ID, customer_ID, street, apt, city, [state], ZIPCODE) VALUES (0006, 0006, 'S Ocean Blvd', '1371', 'Pompano Beach', 'FL', '33062')
INSERT INTO [address] (customer_address_ID, customer_ID, street, apt, city, [state], ZIPCODE) VALUES (0007, 0007, 'Johnson Dairy Rd', '189', 'Rockwell', 'NC', '28138')
INSERT INTO [address] (customer_address_ID, customer_ID, street, apt, city, [state], ZIPCODE) VALUES (0008, 0008, 'Bluff Rd', '13197', 'Geismar', 'LA', '70734')
INSERT INTO [address] (customer_address_ID, customer_ID, street, apt, city, [state], ZIPCODE) VALUES (0009, 0009, 'Eastern Cutoff Rd', '12', 'Princeton', 'ME', '04668')
INSERT INTO [address] (customer_address_ID, customer_ID, street, apt, city, [state], ZIPCODE) VALUES (0010, 0010, 'Alice Dr', '73', 'Fowlerville', 'MI', '48836')
INSERT INTO [address] (customer_address_ID, customer_ID, street, apt, city, [state], ZIPCODE) VALUES (0011, 0011, 'Park Avenue', 'Apt 3B', 'New York', 'NY', '10022')
INSERT INTO [address] (customer_address_ID, customer_ID, street, apt, city, [state], ZIPCODE) VALUES (0012, 0012, 'Broadway', 'Apt 2C', 'Los Angeles', 'CA', '90001')
INSERT INTO [address] (customer_address_ID, customer_ID, street, apt, city, [state], ZIPCODE) VALUES (0013, 0013, 'Main Street', 'Apt 4D', 'Chicago', 'IL', '60601')
INSERT INTO [address] (customer_address_ID, customer_ID, street, apt, city, [state], ZIPCODE) VALUES (0014, 0014, 'Highland Drive', 'Apt 1A', 'Houston', 'TX', '77002')
INSERT INTO [address] (customer_address_ID, customer_ID, street, apt, city, [state], ZIPCODE) VALUES (0015, 0015, 'Lexington Avenue', 'Apt 5E', 'Boston', 'MA', '02108')
INSERT INTO [address] (customer_address_ID, customer_ID, street, apt, city, [state], ZIPCODE) VALUES (0016, 0016, 'Fifth Avenue', 'Apt 6F', 'San Francisco', 'CA', '94102')
INSERT INTO [address] (customer_address_ID, customer_ID, street, apt, city, [state], ZIPCODE) VALUES (0017, 0017, 'Rodeo Drive', 'Apt 7G', 'Beverly Hills', 'CA', '90210')
INSERT INTO [address] (customer_address_ID, customer_ID, street, apt, city, [state], ZIPCODE) VALUES (0018, 0018, 'Michigan Avenue', 'Apt 8H', 'Chicago', 'IL', '60611')
INSERT INTO [address] (customer_address_ID, customer_ID, street, apt, city, [state], ZIPCODE) VALUES (0019, 0019, 'Canal Street', 'Apt 9I', 'New Orleans', 'LA', '70130')
INSERT INTO [address] (customer_address_ID, customer_ID, street, apt, city, [state], ZIPCODE) VALUES (0020, 0020, 'Lombard Street', 'Apt 10J', 'San Francisco', 'CA', '94133');


--Inserting values into product category


INSERT INTO product_category (category_ID, category_name, category_description) VALUES (0001, 'Appliances', 'Kitchen and Home Appliances, Water Dispenser')
INSERT INTO product_category (category_ID, category_name, category_description) VALUES (0002, 'TV & Home Theater', 'TV, Home Theater Audio & Video, and Accessories')
INSERT INTO product_category (category_ID, category_name, category_description) VALUES (0003, 'Computers & Tablets', 'PC, Laptops, Monitor, Keyboard, Accessories')
INSERT INTO product_category (category_ID, category_name, category_description) VALUES (0004, 'Cell Phones', 'Cell Phones, and Accessories')
INSERT INTO product_category (category_ID, category_name, category_description) VALUES (0005, 'Video Games', 'Consoles, Xbox, PlayStation, Gaming Accessories')
INSERT INTO product_category (category_ID, category_name, category_description) VALUES (0006, 'Cameras', 'Cameras, DSLR, Lenses, Camcorders, Drones')
INSERT INTO product_category (category_ID, category_name, category_description) VALUES (0007, 'Car Electronics', 'Car Audio, Car Security, GPS, DVD Player')
INSERT INTO product_category (category_ID, category_name, category_description) VALUES (0008, 'Home', 'Home Security, Smart Home, Wifi')
INSERT INTO product_category (category_ID, category_name, category_description) VALUES (0009, 'Wearable Technology', 'Apple Watch, Smartwatches, Headphones')
INSERT INTO product_category (category_ID, category_name, category_description) VALUES (0010, 'Office', 'Printer, Scanner, Faxer, Telephone')
INSERT INTO product_category (category_ID, category_name, category_description) VALUES (0011, 'Smart Home', 'Smart Speakers, Smart Thermostats, Smart Lighting')
INSERT INTO product_category (category_ID, category_name, category_description) VALUES (0012, 'Wireless Speakers', 'Sonos, Bose, JBL')
INSERT INTO product_category (category_ID, category_name, category_description) VALUES (0013, 'Headphones', 'Beats, Sony, Bose')
INSERT INTO product_category (category_ID, category_name, category_description) VALUES (0014, 'Tablets', 'iPad, Samsung Galaxy Tab, Microsoft Surface')
INSERT INTO product_category (category_ID, category_name, category_description) VALUES (0015, 'Camera Drones', 'DJI, Parrot, Autel Robotics');


--Inserting values into product

INSERT INTO product (product_ID, product_name, product_description, price, [availability], category_ID) VALUES (3452, 'Sony 75" LED 4K TV', 'Sony - 75" Class X80K Series LED 4K HDR Smart Google TV', 899, 20, 0002)
INSERT INTO product (product_ID, product_name, product_description, price, [availability], category_ID) VALUES (3002, 'LG 55" LED 4K TV', 'LG - 55� Class UQ75 Series LED 4K UHD Smart webOS TV', 379.99, 12, 0002)
INSERT INTO product (product_ID, product_name, product_description, price, [availability], category_ID) VALUES (1674, 'Apple iPhone 14 Pro', 'Apple - iPhone 14 Pro 128GB - Space Black (Verizon)', 999.99, 4, 0004)
INSERT INTO product (product_ID, product_name, product_description, price, [availability], category_ID) VALUES (0223, 'HP 15.6" Laptop', 'HP - 15.6" Touch-Screen Laptop - Intel Core i5 - 8GB Memory - 512GB SSD - Natural Silver', 449.99, 42, 0003)
INSERT INTO product (product_ID, product_name, product_description, price, [availability], category_ID) VALUES (4053, 'Macbook air 13.3" M1', 'MacBook Air 13.3" Laptop - Apple M1 chip - 8GB Memory - 256GB SSD - Space Gray', 799.99, 23, 0003)
INSERT INTO product (product_ID, product_name, product_description, price, [availability], category_ID) VALUES (8731, 'Sony 27" 4K HDR Monitor', 'Sony - 27� INZONE M9 4K HDR 144Hz Gaming Monitor with Full Array Local Dimming and NVIDIA G-SYNC - White', 899.99, 31, 0003)
INSERT INTO product (product_ID, product_name, product_description, price, [availability], category_ID) VALUES (2334, 'Canon EOS Rebel T7 DSLR', 'Canon - EOS Rebel T7 DSLR Video Camera with 18-55mm Lens - Black', 399.99, 17, 0006)
INSERT INTO product (product_ID, product_name, product_description, price, [availability], category_ID) VALUES (0984, 'Apple Watch Series 8 45mm', 'Apple Watch Series 8 (GPS) 45mm Aluminum Case with Midnight Sport Band - M/L - Midnight', 429, 8, 0009)
INSERT INTO product (product_ID, product_name, product_description, price, [availability], category_ID) VALUES (1244, 'LG 4.5 CuFt Washer', 'LG - 4.5 Cu. Ft. High-Efficiency Stackable Smart Front Load Washer with Steam and Built-In Intelligence - White', 949.99, 42, 0001)
INSERT INTO product (product_ID, product_name, product_description, price, [availability], category_ID) VALUES (6534, 'HP LaserJet Pro Printer', 'HP - LaserJet Pro M479fdw Wireless Color All-In-One Laser Printer - White', 819.99, 53, 0010)
INSERT INTO product (product_ID, product_name, product_description, price, [availability], category_ID) VALUES (5671, 'DJI Mavic Air 2', 'A compact and powerful drone for aerial photography and videography', 799.99, 5, 0015)
INSERT INTO product (product_ID, product_name, product_description, price, [availability], category_ID) VALUES (6200, 'LG OLED TV', 'A large and vibrant 4K television with exceptional picture quality', 1499.99, 15, 0002)
INSERT INTO product (product_ID, product_name, product_description, price, [availability], category_ID) VALUES (1007, 'Google Nest Hub', 'A smart home device that combines a display and Google Assistant', 129.99, 30, 0008)
INSERT INTO product (product_ID, product_name, product_description, price, [availability], category_ID) VALUES (2867, 'Canon EOS R5', 'A professional-grade mirrorless camera with advanced features', 3799.99, 8, 0006)
INSERT INTO product (product_ID, product_name, product_description, price, [availability], category_ID) VALUES (1379, 'Beats Studio3', 'Wireless headphones with noise-cancellation and up to 22 hours of battery life', 349.99, 15, 0009);

--Inserting values into orders 

INSERT INTO orders (order_ID, customer_ID, product_ID, order_date) VALUES (0001, 0003, 2334, '05/16/2021')
INSERT INTO orders (order_ID, customer_ID, product_ID, order_date) VALUES (0002, 0005, 1244, '05/29/2021')
INSERT INTO orders (order_ID, customer_ID, product_ID, order_date) VALUES (0003, 0003, 3002, '06/30/2021')
INSERT INTO orders (order_ID, customer_ID, product_ID, order_date) VALUES (0004, 0009, 0984, '07/24/2021')
INSERT INTO orders (order_ID, customer_ID, product_ID, order_date) VALUES (0005, 0003, 1674, '09/01/2022')
INSERT INTO orders (order_ID, customer_ID, product_ID, order_date) VALUES (0006, 0007, 2334, '10/29/2022')
INSERT INTO orders (order_ID, customer_ID, product_ID, order_date) VALUES (0007, 0010, 3452, '02/28/2023')
INSERT INTO orders (order_ID, customer_ID, product_ID, order_date) VALUES (0008, 0008, 6534, '03/12/2023')
INSERT INTO orders (order_ID, customer_ID, product_ID, order_date) VALUES (0009, 0004, 8731, '12/24/2021')
INSERT INTO orders (order_ID, customer_ID, product_ID, order_date) VALUES (0010, 0002, 3002, '12/24/2021')
INSERT INTO orders (order_ID, customer_ID, product_ID, order_date) VALUES (0011, 0013, 1007, '12/02/2022')
INSERT INTO orders (order_ID, customer_ID, product_ID, order_date) VALUES (0012, 0017, 1379, '11/29/2021')
INSERT INTO orders (order_ID, customer_ID, product_ID, order_date) VALUES (0013, 0020, 2334, '06/27/2021')
INSERT INTO orders (order_ID, customer_ID, product_ID, order_date) VALUES (0014, 0018, 3002, '01/14/2022')
INSERT INTO orders (order_ID, customer_ID, product_ID, order_date) VALUES (0015, 0011, 2867, '12/24/2023');

-- inserting into Order_qty

INSERT INTO order_qty (order_ID, product_ID, QUANTITY) VALUES (0001, 2334, 10)
INSERT INTO order_qty (order_ID, product_ID, QUANTITY) VALUES (0002, 1244, 30)
INSERT INTO order_qty (order_ID, product_ID, QUANTITY) VALUES (0003, 3002, 6)
INSERT INTO order_qty (order_ID, product_ID, QUANTITY) VALUES (0004, 0984, 7)
INSERT INTO order_qty (order_ID, product_ID, QUANTITY) VALUES (0005, 1674, 2)
INSERT INTO order_qty (order_ID, product_ID, QUANTITY) VALUES (0006, 2334, 3)
INSERT INTO order_qty (order_ID, product_ID, QUANTITY) VALUES (0007, 3452, 6)
INSERT INTO order_qty (order_ID, product_ID, QUANTITY) VALUES (0008, 6534, 50)
INSERT INTO order_qty (order_ID, product_ID, QUANTITY) VALUES (0009, 8731, 20)
INSERT INTO order_qty (order_ID, product_ID, QUANTITY) VALUES (0010, 3002, 1)
INSERT INTO order_qty (order_ID, product_ID, QUANTITY) VALUES (0011, 1007, 1)
INSERT INTO order_qty (order_ID, product_ID, QUANTITY) VALUES (0012, 1379, 2)
INSERT INTO order_qty (order_ID, product_ID, QUANTITY) VALUES (0013, 2334, 1)
INSERT INTO order_qty (order_ID, product_ID, QUANTITY) VALUES (0014, 3002, 4)
INSERT INTO order_qty (order_ID, product_ID, QUANTITY) VALUES (0015, 2867, 2)

-- Inserting value into Payment 
OPEN SYMMETRIC KEY MySymmetricKey
DECRYPTION BY CERTIFICATE MyCertificate;

INSERT INTO payment  VALUES (9937, 0001, 0003, 'Credit Card', ENCRYPTBYKEY(KEY_GUID('MySymmetricKey'), convert(varbinary,'9788854623')))
INSERT INTO payment  VALUES (2693, 0002, 0005, 'Debit Card', ENCRYPTBYKEY(KEY_GUID('MySymmetricKey'), convert(varbinary,'9788890809')))
INSERT INTO payment  VALUES (8875, 0003, 0003, 'Credit Card',ENCRYPTBYKEY(KEY_GUID('MySymmetricKey'), convert(varbinary,'9398430809')))
INSERT INTO payment  VALUES (9236, 0004, 0009, 'Account Transfer',ENCRYPTBYKEY(KEY_GUID('MySymmetricKey'), convert(varbinary,'7898780809')))
INSERT INTO payment  VALUES (4357, 0005, 0003, 'Account Transfer',ENCRYPTBYKEY(KEY_GUID('MySymmetricKey'), convert(varbinary,'9898865409')))
INSERT INTO payment  VALUES (9754, 0006, 0007, 'Debit Card',ENCRYPTBYKEY(KEY_GUID('MySymmetricKey'), convert(varbinary,'6728890823')))
INSERT INTO payment  VALUES (1134, 0007, 0010, 'Credit Card',ENCRYPTBYKEY(KEY_GUID('MySymmetricKey'), convert(varbinary,'9896654329')))
INSERT INTO payment  VALUES (7643, 0008, 0008, 'Credit Card',ENCRYPTBYKEY(KEY_GUID('MySymmetricKey'), convert(varbinary,'9898865472')))
INSERT INTO payment  VALUES (4986, 0009, 0004, 'Debit Card',ENCRYPTBYKEY(KEY_GUID('MySymmetricKey'), convert(varbinary,'7898890899')))
INSERT INTO payment  VALUES (7665, 0010, 0002, 'Account Transfer',ENCRYPTBYKEY(KEY_GUID('MySymmetricKey'), convert(varbinary,'6798890887')))

-- SELECT *,
-- CONVERT(varchar, DecryptByKey([card_number]))
-- AS 'Decrypted password'
-- FROM dbo.payment;
-- GO

-- Inserting value into Shipping Company

INSERT INTO shipping_company (shipping_company_ID, shipping_company_name, shipping_company_address, shipping_cost) VALUES (0001, 'USPS','123 Oak St, Springville USA',4.45)
INSERT INTO shipping_company (shipping_company_ID, shipping_company_name, shipping_company_address, shipping_cost) VALUES (0002, 'Sendle','567 Maple Ave, Riverside USA',8)
INSERT INTO shipping_company (shipping_company_ID, shipping_company_name, shipping_company_address, shipping_cost) VALUES (0003, 'UPS','890 Pine St, Fairview USA',5)
INSERT INTO shipping_company (shipping_company_ID, shipping_company_name, shipping_company_address, shipping_cost) VALUES (0004, 'DHL','234 Elm St, Maplewood USA',6)
INSERT INTO shipping_company (shipping_company_ID, shipping_company_name, shipping_company_address, shipping_cost) VALUES (0005, 'Shipbob','567 Birch Ln, Cedarburg USA',8.45)
INSERT INTO shipping_company (shipping_company_ID, shipping_company_name, shipping_company_address, shipping_cost) VALUES (0006, 'Fedex','890 Cedar St, Bloomington USA',10)
INSERT INTO shipping_company (shipping_company_ID, shipping_company_name, shipping_company_address, shipping_cost) VALUES (0007, 'Easypost','123 Walnut Dr, Greenville USA',7.99)
INSERT INTO shipping_company (shipping_company_ID, shipping_company_name, shipping_company_address, shipping_cost) VALUES (0008, 'Maersk','456 Elm St, Ocean Springs USA',5)
INSERT INTO shipping_company (shipping_company_ID, shipping_company_name, shipping_company_address, shipping_cost) VALUES (0009, 'Cosco','789 Maple Ave, Bozeman USA',4)
INSERT INTO shipping_company (shipping_company_ID, shipping_company_name, shipping_company_address, shipping_cost) VALUES (0010, 'Taycan','234 Oak St, Laurel USA',19.50)
INSERT INTO shipping_company (shipping_company_ID, shipping_company_name, shipping_company_address, shipping_cost) VALUES (0011, 'Starship Delivery','567 Pine St, Wheat Ridge USA',10.50)
INSERT INTO shipping_company (shipping_company_ID, shipping_company_name, shipping_company_address, shipping_cost) VALUES (0012, 'Swift Transport','890 Cedar Ln, Golden USA',12.75)
INSERT INTO shipping_company (shipping_company_ID, shipping_company_name, shipping_company_address, shipping_cost) VALUES (0013, 'Horizon Shipping','123 Birch St, Northampton USA',14.25)
INSERT INTO shipping_company (shipping_company_ID, shipping_company_name, shipping_company_address, shipping_cost) VALUES (0014, 'Oceanic Express','456 Maple Ave, Hyattsville USA',16.00)
INSERT INTO shipping_company (shipping_company_ID, shipping_company_name, shipping_company_address, shipping_cost) VALUES (0015, 'Skyline Logistics','789 Cedar St, Centreville USA',18.50);

-- Inserting values into Supplier


INSERT INTO supplier (supplier_ID, supplier_name, [location]) VALUES (0001, 'Arduino', 'New York, NY')
INSERT INTO supplier (supplier_ID, supplier_name, [location]) VALUES (0002, 'Joule Case', 'Seattle, WA')
INSERT INTO supplier (supplier_ID, supplier_name, [location]) VALUES (0003, 'Yotta Energy', 'Austin, TX')
INSERT INTO supplier (supplier_ID, supplier_name, [location]) VALUES (0004, 'Rec Silicon Asa', 'Moses Lake, WA')
INSERT INTO supplier (supplier_ID, supplier_name, [location]) VALUES (0005, 'Ecotec Solutions', 'Colton, CA')
INSERT INTO supplier (supplier_ID, supplier_name, [location]) VALUES (0006, 'Ses', 'Woburn, MA')
INSERT INTO supplier (supplier_ID, supplier_name, [location]) VALUES (0007, 'Enzinc Inc.', 'Richmond, CA')
INSERT INTO supplier (supplier_ID, supplier_name, [location]) VALUES (0008, 'Ainstein', 'Lawrence, KS')
INSERT INTO supplier (supplier_ID, supplier_name, [location]) VALUES (0009, 'Trakid', 'Raleigh, NC')
INSERT INTO supplier (supplier_ID, supplier_name, [location]) VALUES (0010, 'Clovitek', 'Salt Lake City, UT')
INSERT INTO supplier (supplier_ID, supplier_name, [location]) VALUES (0011, 'SparkFun Electronics', 'Boulder, CO')
INSERT INTO supplier (supplier_ID, supplier_name, [location]) VALUES (0012, 'Adafruit Industries', 'New York, NY')
INSERT INTO supplier (supplier_ID, supplier_name, [location]) VALUES (0013, 'Digi-Key Electronics', 'Thief River Falls, MN')
INSERT INTO supplier (supplier_ID, supplier_name, [location]) VALUES (0014, 'Mouser Electronics', 'Mansfield, TX')
INSERT INTO supplier (supplier_ID, supplier_name, [location]) VALUES (0015, 'RS Components', 'Corby, UK');

--Inserting values into shipment (needs to be changed add_ID, order_ID, shipping company_ID)

INSERT INTO shipment (tracking_ID, order_ID, customer_address_ID, shipping_comp_ID) VALUES (3460, 0010 , 0007, 0010)
INSERT INTO shipment (tracking_ID, order_ID, customer_address_ID, shipping_comp_ID) VALUES (0340, 0007 , 0005, 0003)
INSERT INTO shipment (tracking_ID, order_ID, customer_address_ID, shipping_comp_ID) VALUES (2680, 0005 , 0009, 0002)
INSERT INTO shipment (tracking_ID, order_ID, customer_address_ID, shipping_comp_ID) VALUES (0047, 0001 , 0006, 0001)
INSERT INTO shipment (tracking_ID, order_ID, customer_address_ID, shipping_comp_ID) VALUES (1368, 0002 , 0004, 0005)
INSERT INTO shipment (tracking_ID, order_ID, customer_address_ID, shipping_comp_ID) VALUES (1487, 0003 , 0007, 0004)
INSERT INTO shipment (tracking_ID, order_ID, customer_address_ID, shipping_comp_ID) VALUES (5621, 0002 , 0003, 0009)
INSERT INTO shipment (tracking_ID, order_ID, customer_address_ID, shipping_comp_ID) VALUES (0654, 0004 , 0002, 0007)
INSERT INTO shipment (tracking_ID, order_ID, customer_address_ID, shipping_comp_ID) VALUES (3745, 0009 , 0008, 0006)
INSERT INTO shipment (tracking_ID, order_ID, customer_address_ID, shipping_comp_ID) VALUES (0476, 0006 , 0004, 0008)
INSERT INTO shipment (tracking_ID, order_ID, customer_address_ID, shipping_comp_ID) VALUES (3465, 0015 , 0007, 0015)
INSERT INTO shipment (tracking_ID, order_ID, customer_address_ID, shipping_comp_ID) VALUES (3461, 0011 , 0012, 0014)
INSERT INTO shipment (tracking_ID, order_ID, customer_address_ID, shipping_comp_ID) VALUES (3462, 0012 , 0005, 0013)
INSERT INTO shipment (tracking_ID, order_ID, customer_address_ID, shipping_comp_ID) VALUES (3463, 0013 , 0014, 0012)
INSERT INTO shipment (tracking_ID, order_ID, customer_address_ID, shipping_comp_ID) VALUES (3464, 0014 , 0015, 0011);

-- Inserting values into product review (needs to be changed, product iD)


INSERT INTO product_review(review_ID, product_ID, rating, review) VALUES (0098, 1244 ,2 , 'Satisfied')
INSERT INTO product_review(review_ID, product_ID, rating, review) VALUES (1476, 0223 ,4 , 'Great performance!')
INSERT INTO product_review(review_ID, product_ID, rating, review) VALUES (1200, 4053 ,5 , 'Best purchase')
INSERT INTO product_review(review_ID, product_ID, rating, review) VALUES (0097, 6534, null, null)
INSERT INTO product_review(review_ID, product_ID, rating, review) VALUES (0056, 3002 ,1 , 'Faulty speakers')
INSERT INTO product_review(review_ID, product_ID, rating, review) VALUES (0325, 2334 ,4 , null)
INSERT INTO product_review(review_ID, product_ID, rating, review) VALUES (0016, 0984 ,5 , 'Favourite watch')
INSERT INTO product_review(review_ID, product_ID, rating, review) VALUES (0568, 3002 ,null, null)
INSERT INTO product_review(review_ID, product_ID, rating, review) VALUES (0267, 8731, 4 , 'Great product')
INSERT INTO product_review(review_ID, product_ID, rating, review) VALUES (3421, 1674 ,3 , null)
INSERT INTO product_review(review_ID, product_ID, rating, review) VALUES (0103, 5671, 2, 'Satisfied')
INSERT INTO product_review(review_ID, product_ID, rating, review) VALUES (0099, 6200, 5, 'Absolutely love it!')
INSERT INTO product_review(review_ID, product_ID, rating, review) VALUES (0100, 1007, 3, 'Not bad, could be better')
INSERT INTO product_review(review_ID, product_ID, rating, review) VALUES (0101, 2867, 4, 'Great product, but a bit pricey')
INSERT INTO product_review(review_ID, product_ID, rating, review) VALUES (0102, 1379, 1, 'Terrible product, would not recommend');

-- Inserting values into discount


INSERT INTO discount(discount_ID, discount_type, percentage_of_discount) VALUES (0001, 'Referral bonus', 0.05)
INSERT INTO discount(discount_ID, discount_type, percentage_of_discount) VALUES (0002, 'First purchase', 0.15)
INSERT INTO discount(discount_ID, discount_type, percentage_of_discount) VALUES (0003, 'Loyalty reward', 0.20)
INSERT INTO discount(discount_ID, discount_type, percentage_of_discount) VALUES (0004, 'Seasonal 25%', 0.25)
INSERT INTO discount(discount_ID, discount_type, percentage_of_discount) VALUES (0005, 'Refund', 1.00)
INSERT INTO discount(discount_ID, discount_type, percentage_of_discount) VALUES (0006, 'No discount', 0.00)

--Inserting values into product_supplier_relation (need to change all ids)


INSERT INTO product_supplier_relation(product_ID, supplier_ID, cost_to_supplier) VALUES (1244, 0004, 332.08)
INSERT INTO product_supplier_relation(product_ID, supplier_ID, cost_to_supplier) VALUES (1674, 0005, 234.50)
INSERT INTO product_supplier_relation(product_ID, supplier_ID, cost_to_supplier) VALUES (0223, 0009, 050.67)
INSERT INTO product_supplier_relation(product_ID, supplier_ID, cost_to_supplier) VALUES (2334, 0003, 098.50)
INSERT INTO product_supplier_relation(product_ID, supplier_ID, cost_to_supplier) VALUES (3002, 0005, 045.93)
INSERT INTO product_supplier_relation(product_ID, supplier_ID, cost_to_supplier) VALUES (3452, 0001, 142.58)
INSERT INTO product_supplier_relation(product_ID, supplier_ID, cost_to_supplier) VALUES (4053, 0008, 114.09)
INSERT INTO product_supplier_relation(product_ID, supplier_ID, cost_to_supplier) VALUES (6534, 0006, 210.40)
INSERT INTO product_supplier_relation(product_ID, supplier_ID, cost_to_supplier) VALUES (8731, 0002, 271.03)
INSERT INTO product_supplier_relation(product_ID, supplier_ID, cost_to_supplier) VALUES (0984, 0010, 039.62)
INSERT INTO product_supplier_relation(product_ID, supplier_ID, cost_to_supplier) VALUES (5671, 0011, 332.08)
INSERT INTO product_supplier_relation(product_ID, supplier_ID, cost_to_supplier) VALUES (6200, 0013, 228.95)
INSERT INTO product_supplier_relation(product_ID, supplier_ID, cost_to_supplier) VALUES (1007, 0015, 456.78)
INSERT INTO product_supplier_relation(product_ID, supplier_ID, cost_to_supplier) VALUES (2867, 0012, 789.99)
INSERT INTO product_supplier_relation(product_ID, supplier_ID, cost_to_supplier) VALUES (1379, 0014, 123.45);

--Inserting values into product_discount_relation (need to chnage all iD's)

INSERT INTO product_discount_relation (product_ID, discount_ID, discount_value) VALUES (1244, 0003, 189.99)
INSERT INTO product_discount_relation (product_ID, discount_ID, discount_value) VALUES (1674, 0001, 049.99)
INSERT INTO product_discount_relation (product_ID, discount_ID, discount_value) VALUES (0223, 0006, NULL)
INSERT INTO product_discount_relation (product_ID, discount_ID, discount_value) VALUES (2334, 0006, NULL)
INSERT INTO product_discount_relation (product_ID, discount_ID, discount_value) VALUES (3002, 0003, 075.99)
INSERT INTO product_discount_relation (product_ID, discount_ID, discount_value) VALUES (3452, 0006, NULL)
INSERT INTO product_discount_relation (product_ID, discount_ID, discount_value) VALUES (4053, 0005, 799.99)
INSERT INTO product_discount_relation (product_ID, discount_ID, discount_value) VALUES (6534, 0006, NULL)
INSERT INTO product_discount_relation (product_ID, discount_ID, discount_value) VALUES (8731, 0004, 224.99)
INSERT INTO product_discount_relation (product_ID, discount_ID, discount_value) VALUES (0984, 006, NULL)
INSERT INTO product_discount_relation (product_ID, discount_ID, discount_value) VALUES (5671, 0001, 50.00)
INSERT INTO product_discount_relation (product_ID, discount_ID, discount_value) VALUES (6200, 0002, 10.99)
INSERT INTO product_discount_relation (product_ID, discount_ID, discount_value) VALUES (1007, 0003, 15.00)
INSERT INTO product_discount_relation (product_ID, discount_ID, discount_value) VALUES (2867, 0004, 20.00)
INSERT INTO product_discount_relation (product_ID, discount_ID, discount_value) VALUES (1379, 0001, 75.00);
