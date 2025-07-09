CREATE DATABASE ShopDB;
USE ShopDB;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(15),
    street VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE Products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(10, 2),
    stock_quantity INT
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Order_Items (
    order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO Customers (name, phone_number, street, city) VALUES
('Alice Johnson', '1234567890', '123 Elm St', 'New York'),
('Bob Smith', '2345678901', '456 Oak St', 'Los Angeles'),
('Charlie Brown', '3456789012', '789 Pine St', 'Chicago'),
('Diana Ross', '4567890123', '321 Maple St', 'Houston'),
('Ethan Hunt', '5678901234', '654 Cedar St', 'Phoenix'),
('Fiona Apple', '6789012345', '987 Birch St', 'Philadelphia'),
('George Clooney', '7890123456', '321 Willow St', 'San Antonio'),
('Hannah Montana', '8901234567', '654 Aspen St', 'San Diego'),
('Ian McKellen', '9012345678', '987 Spruce St', 'Dallas'),
('Julia Roberts', '0123456789', '123 Redwood St', 'San Jose');

INSERT INTO Products (product_name, category, price, stock_quantity) VALUES
('Laptop', 'Electronics', 1200.00, 15),
('Smartphone', 'Electronics', 800.00, 25),
('Book', 'Education', 20.00, 100),
('Desk Chair', 'Furniture', 150.00, 10),
('Coffee Mug', 'Kitchen', 10.00, 50);

INSERT INTO Orders (customer_id, order_date, total_amount) VALUES
(1, '2025-07-01', 820.00),
(2, '2025-07-02', 1300.00),
(3, '2025-07-03', 170.00),
(4, '2025-07-04', 10.00),
(5, '2025-07-05', 20.00),
(6, '2025-07-06', 150.00),
(7, '2025-07-07', 800.00),
(8, '2025-07-08', 1200.00),
(9, '2025-07-09', 150.00),
(10, '2025-07-10', 20.00);

INSERT INTO Order_Items (order_id, product_id, quantity, price) VALUES
(1, 3, 1, 20.00),
(2, 1, 1, 1200.00),
(3, 4, 1, 150.00),
(3, 5, 2, 10.00),
(4, 5, 1, 10.00);

SELECT * 
FROM Customers;

SELECT * 
FROM Products;

SELECT * 
FROM Orders;

SELECT * 
FROM Order_Items;

INSERT INTO Customers (name, phone_number, street, city)
VALUES ('Reece James', '9998887777', '222 Palm St', 'Austin');

UPDATE Products
SET stock_quantity = 2
WHERE product_id = 1;

DELETE FROM Order_Items
WHERE order_id = 10;

DELETE FROM Orders
WHERE order_id = 10;

SELECT * 
FROM Orders
WHERE customer_id = 1;







