-- Part A - Database & Table Creation
-- Task 1: Create a database named ecommerce_db.
CREATE DATABASE ecommerce_db;

-- Task 2: Use/select the ecommerce_db database.
use ecommerce_db;

-- Task 3: Create a table named products with the following columns:
create table products(
product_id INT PRIMARY KEY,
product_name VARCHAR(100),
category VARCHAR(50),
brand VARCHAR(50),
price DECIMAL(10,2),
quantity INT,
city VARCHAR(50),
status VARCHAR(20)
);

-- Task 4: Display the structure of the products table.
select * from products;

-- Task 5: Display all tables available inside ecommerce_db.
show tables;

-- Part B - INSERT Operations
-- Task 6: Insert the following product record:
INSERT INTO products 
VALUES(201, 'Galaxy M55', 'Mobile', 'Samsung', 32000, 15, 'Pune', 'Available');

-- Task 7: Insert the following product record:
INSERT INTO products 
VALUES(202, 'iPhone 15', 'Mobile', 'Apple', 65000, 8, 'Mumbai', 'Available');

-- Task 8: Insert the following product record:
INSERT INTO products 
VALUES(203, 'Moto Edge 50', 'Mobile', 'Motorola', 28000, 20, 'Pune', 'Available');

-- Task 9: Insert the following product record:
INSERT INTO products 
VALUES(204, 'Inspiron 15', 'Laptop', 'Dell', 58000, 6, 'Nashik', 'Available');

-- Task 10: Insert the following product record:
INSERT INTO products 
VALUES(205, 'IdeaPad Slim 3', 'Laptop', 'Lenovo', 45000, 12, 'Mumbai', 'Available');

-- Task 11: Insert the following product record:
INSERT INTO products 
VALUES(206, 'Galaxy Watch 6', 'Watch', 'Samsung', 22000, 4, 'Pune', 'Out of Stock');

-- Part B - INSERT Operations (Continued)
-- Task 12: Insert the following product record:
INSERT INTO products 
VALUES(207, 'Apple Watch SE', 'Watch', 'Apple', 30000, 10, 'Mumbai', 'Available');

-- Task 13: Insert the following product record:
INSERT INTO products 
VALUES(208, 'Redmi Pad', 'Tablet', 'Xiaomi', 24000, 18, 'Pune', 'Available');

-- Task 14: Insert the following product record:
INSERT INTO products 
VALUES(209, 'OnePlus Pad', 'Tablet', 'OnePlus', 35000, 5, 'Nashik', 'Available');

-- Task 15: Insert the following product record:
INSERT INTO products 
VALUES(210, 'Bluetooth Speaker', 'Accessories', 'JBL', 7000, 25, 'Mumbai', 'Available');

-- Part C - Basic SELECT & Operator Practice
-- Task 16: Display all records from products.
SELECT * FROM products;

-- Task 17: Display only product_name.
SELECT product_name FROM products;

-- Task 18: Display product_name and price.
SELECT product_name,price FROM products;

-- Task 19: Display product_name, category, brand and price.
SELECT product_name, category, brand, price FROM products;

-- Task 20: Display products available in Pune.
SELECT product_name , city from products where city='Pune';

-- Task 21: Display products available in Mumbai.
SELECT product_name , city from products where city='Mumbai';

-- Task 22: Display all Mobile products.
SELECT * FROM products WHERE category='Mobile';

-- Task 23: Display all Laptop products.
SELECT * FROM products WHERE category='Laptop';

-- Task 24: Display products whose price is greater than 30000.
SELECT * FROM products WHERE PRICE > 30000;

-- Task 25: Display products whose price is less than 30000.
SELECT  * FROM products WHERE price < 30000;

-- Task 26: Display products whose price is equal to 35000.
select * from products where price = 35000;

-- Task 27: Display products whose price is greater than or equal to 45000.
select * from products where price >= 45000;

-- Task 28: Display products whose price is less than or equal to 30000.
select * from products where price <= 30000;

-- Task 29: Display products whose quantity is greater than 10.
select * from products where quantity > 10;

-- Task 30: Display products whose quantity is less than 10.
select * from products where quantity < 10;

-- Part D - Logical Operators
-- Task 31: Display products from Pune AND Mobile category.
select * from products where city='Pune' AND category='Mobile';

-- Task 32: Display products from Mumbai AND Available status.
select * from products where city='Mumbai' AND status='Available';

-- Task 33: Display products where price > 30000 AND quantity > 5.
select * from products where price > 30000 and quantity >5;

-- Task 34: Display products where price >= 30000 AND price <= 60000.
select * from products where price >= 30000 AND price <= 60000;

-- Task 35: Display products from Pune OR Mumbai.
select * from products where city='Pune' or city='mumbai';

-- Part D - Logical Operators (Continued)
-- Task 36: Display products belonging to Mobile OR Laptop category.
select * from products where category='Mobile' or category='Laptop';

-- Task 37: Display products where quantity < 10 OR price > 50000.
select * from products where quantity < 10 OR price > 50000;

-- Task 38: Display products where category = Mobile AND price > 30000.
select * from products where category = 'Mobile' AND price > 30000;

-- Task 39: Display products where brand = Samsung OR brand = Apple.
select * from products where brand='Samsung' or brand='Apple';

-- Task 40: Display products where city = Pune AND status = Available AND quantity > 10.
select * from products where city='Pune' and status='Available';

-- Part E - Slightly Higher Operator Logic
-- Task 41: Display products whose price is BETWEEN 25000 and 50000.
select * from products where price between 25000 and 50000;

-- Task 42: Display products whose quantity is BETWEEN 5 and 15.
select * from products where quantity between 5 and 15;

-- Task 43: Display products whose category is IN Mobile, Laptop, Tablet.
select * from products where category in ('Mobile','Laptop','Tablet');

-- Task 44: Display products whose city is IN Pune, Mumbai.
select * from products where city in ('Pune','Mumbai');

-- Task 45: Display products whose brand is NOT Samsung.
select * from products where brand not in('Samsung');

-- Task 46: Display products whose status is NOT Out of Stock.
select * from products where status not in ('Out of Stock');

-- Task 47: Display products whose price is NOT EQUAL TO 30000.
select * from products where price <> 30000;

-- Task 48: Display products whose product name starts with Galaxy.
select * from products where product_name like 'Galaxy%';

-- Task 49: Display products whose product name contains Pad.
select * from products where product_name like '%Pad%';

-- Task 50: Display products where category = Mobile AND (price > 30000 OR quantity > 15).
select * from products where category = 'Mobile' AND (price > 30000 OR quantity > 15) ;

-- Part F - UPDATE Operations
-- Task 51: Update the price of Galaxy M55 from 32000 to 34000.

update products set price = 34000 where product_name='Galaxy MS5';

-- Task 52: Update the quantity of iPhone 15 to 12.
-- Task 53: Change the status of Galaxy Watch 6 from Out of Stock to Available.
update products set status = 'Available' where product_name='Galaxy Watch 6';

-- Task 54: Increase the price of all Mobile products by 2000.
update products set price = price+2000;

-- Task 55: Increase the quantity of all Pune products by 5.
update products set quantity = quantity+5 where city='Pune';

-- Task 56: Update the status to Out of Stock for products whose quantity is less than 5.
update products set status='Out of Stock' where quantity<5;

-- Part G - DELETE Operations
-- Task 57: Delete the product whose product_id = 210.
delete from products where product_id = 210;

-- Task 58: Delete products whose price is less than 8000.
delete from products where price < 8000;

-- Task 59: Delete products where status = Out of Stock AND quantity < 5.
delete from products where status = 'Out of Stock' AND quantity < 5;

-- Task 60: Delete products belonging to the Tablet category whose price is greater than 30000.
delete from products where category='Tablet' and price > 30000;