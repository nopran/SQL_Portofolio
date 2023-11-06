-- setup_database.sql
-- This script is used to set up the initial tables and insert data for the SQL portfolio.

-- Creating table for Products
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    name VARCHAR(100),
    price DECIMAL(10,2),
    category VARCHAR(50)
);

-- Inserting sample data into Products
INSERT INTO Products (product_id, name, price, category) VALUES
(1, 'Laptop', 1200.00, 'Electronics'),
(2, 'Mouse', 25.99, 'Electronics'),
(3, 'Desk Chair', 250.00, 'Furniture'),
(4, 'Notebook', 3.50, 'Stationery'),
(5, 'Smartphone', 999.99, 'Electronics'),
(6, 'Coffee Mug', 8.50, 'Kitchenware');

-- Creating table for Customers
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    address TEXT
);

-- Inserting sample data into Customers
INSERT INTO Customers (customer_id, name, email, address) VALUES
(101, 'Alice Smith', 'alice.smith@example.com', '123 Maple Street'),
(102, 'Bob Johnson', 'bob.johnson@example.com', '456 Oak Avenue'),
(103, 'Carol Williams', 'carol.williams@example.com', '789 Pine Road');

-- Creating table for Sales
CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    customer_id INT,
    quantity INT,
    sale_date DATE,
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Inserting sample data into Sales
INSERT INTO Sales (sale_id, product_id, customer_id, quantity, sale_date) VALUES
(1001, 1, 101, 1, '2023-10-01'),
(1002, 2, 101, 2, '2023-10-01'),
(1003, 4, 102, 10, '2023-10-02'),
(1004, 5, 103, 1, '2023-10-03'),
(1005, 3, 101, 1, '2023-10-04'),
(1006, 6, 103, 4, '2023-10-05');
