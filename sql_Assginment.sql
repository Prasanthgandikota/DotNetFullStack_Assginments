CREATE DATABASE ShoppingCartDb;
USE ShoppingCartDb

CREATE TABLE student (
    StudentId INT PRIMARY KEY,
    StudentName VARCHAR(100),
    CourseName VARCHAR(100),
    CityName VARCHAR(100),
    ContactNumber VARCHAR(15)
);


INSERT INTO student (StudentId, StudentName, CourseName, CityName, ContactNumber) VALUES
(1, 'John Doe', 'BA', 'New York', '123-456-7890'),
(2, 'Jane Smith', 'Mathematics', 'Los Angeles', '234-567-8901'),
(3, 'Michael Johnson', 'Physics', 'Chicago', '345-678-9012'),
(4, 'Emily Davis', 'Chemistry', 'Houston', '456-789-0123'),
(5, 'David Wilson', 'Biology', 'Phoenix', '567-890-1234'),
(6, 'Sarah Brown', 'History', 'Philadelphia', '678-901-2345'),
(7, 'James Jones', 'English', 'San Antonio', '789-012-3456'),
(8, 'Linda Garcia', 'Economics', 'San Diego', '890-123-4567'),
(9, 'Robert Martinez', 'Political Science', 'Dallas', '901-234-5678'),
(10, 'Patricia Hernandez', 'Sociology', 'San Jose', '012-345-6789');

INSERT INTO student (StudentId, StudentName, CourseName, CityName, ContactNumber) VALUES
(11, 'batman', 'Angular', 'Newcity', '90909090909');









CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    UserName VARCHAR(50),
    Password1 VARCHAR(50),
    ContactNumber VARCHAR(50),
    City VARCHAR(50)
);

INSERT INTO Users (UserID, UserName, Password1, ContactNumber, City)
VALUES (1, 'JohnDoe', 'password123', '123-456-7890', 'New York');

INSERT INTO Users (UserID, UserName, Password1, ContactNumber, City)
VALUES (2, 'JaneSmith', 'securePass', '234-567-8901', 'Los Angeles');

INSERT INTO Users (UserID, UserName, Password1, ContactNumber, City)
VALUES (3, 'MikeBrown', 'myPassword', '345-678-9012', 'Chicago');

INSERT INTO Users (UserID, UserName, Password1, ContactNumber, City)
VALUES (4, 'EmilyDavis', 'pass1234', '456-789-0123', 'Houston');

INSERT INTO Users (UserID, UserName, Password1, ContactNumber, City)
VALUES (5, 'DavidWilson', 'password456', '567-890-1234', 'Phoenix');




CREATE TABLE products (
product_id INT PRIMARY KEY,
product_name VARCHAR(255),
category VARCHAR(50),
price DECIMAL(10, 2),
stock_quantity INT
);

INSERT INTO products (product_id, product_name, category, price, stock_quantity)
VALUES (1, 'Laptop', 'Electronics', 999.99, 50);

INSERT INTO products (product_id, product_name, category, price, stock_quantity)
VALUES (2, 'Smartphone', 'Electronics', 699.99, 150);

INSERT INTO products (product_id, product_name, category, price, stock_quantity)
VALUES (3, 'Desk Chair', 'Furniture', 89.99, 200);

INSERT INTO products (product_id, product_name, category, price, stock_quantity)
VALUES (4, 'Coffee Maker', 'Appliances', 49.99, 75);

INSERT INTO products (product_id, product_name, category, price, stock_quantity)
VALUES (5, 'Notebook', 'Stationery', 2.99, 500);




CREATE TABLE cart (
cart_id INT PRIMARY KEY,
quantity VARCHAR(50) NOT NULL,
product_id INT,
foreign key (product_id) references products(product_id)
);
INSERT INTO cart (cart_id, quantity, product_id)
VALUES (1, '2', 1);

INSERT INTO cart (cart_id, quantity, product_id)
VALUES (2, '1', 2);

INSERT INTO cart (cart_id, quantity, product_id)
VALUES (3, '5', 3);

INSERT INTO cart (cart_id, quantity, product_id)
VALUES (4, '3', 4);

INSERT INTO cart (cart_id, quantity, product_id)
VALUES (5, '4', 5);





SELECT * FROM products;
SELECT * FROM cart;
SELECT product_id, product_name, category, price, stock_quantity
FROM products
WHERE category = 'Electronics';

SELECT product_id, product_name, category, price, stock_quantity
FROM products
WHERE stock_quantity = 0;


--Display the products which price between 1000 to 10000 

SELECT product_id, product_name, category, price, stock_quantity
FROM products
WHERE price BETWEEN 1000 AND 10000;

select * from products where product_id=2;

SELECT * from cart where cart_id=1;

SELECT * FROM Users;

select * from users where ContactNumber='456-789-0123';
select * from users where UserID=1;


--ASSGINMENR-2----
SELECT 
    cart.cart_id AS CartId,
    products.product_name AS ProductName,
    cart.quantity AS Quantity,
    products.price AS UnitPrice
FROM 
    cart
JOIN 
    products ON cart.product_id = products.product_id;

--INNER JOIN Returns only rows that have matching values in both tables--
SELECT 
    cart.cart_id AS CartId,
    products.product_name AS ProductName,
    cart.quantity AS Quantity,
    products.price AS UnitPrice
FROM 
    cart
INNER JOIN 
    products ON cart.product_id = products.product_id;

--LEFT OUTER JOIN A LEFT OUTER JOIN returns all rows from the left table (cart), and the matched rows from the right table (products). If no match is found, NULL values are returned for columns from the right table--
SELECT 
    cart.cart_id AS CartId,
    products.product_name AS ProductName,
    cart.quantity AS Quantity,
    products.price AS UnitPrice
FROM 
    cart
LEFT OUTER JOIN 
    products ON cart.product_id = products.product_id;

--RIGHT OUTER JOIN--
SELECT 
    cart.cart_id AS CartId,
    products.product_name AS ProductName,
    cart.quantity AS Quantity,
    products.price AS UnitPrice
FROM 
    cart
RIGHT OUTER JOIN 
    products ON cart.product_id = products.product_id;

	
select count(*) from student where CourseName='angular';
select * from student;

select count(*) from student where CityName='hyderabad';

select count(*), CityName from student group by CityName;
select count(*), CourseName from student group by CourseName;
select count(*), CityName, CourseName from student group by CityName,CourseName;

select * from products 

SELECT 
    products.product_id,
    products.product_name,
    products.price
FROM 
    products
INNER JOIN 
    cart ON products.product_id = cart.product_id;





