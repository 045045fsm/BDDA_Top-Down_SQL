CREATE DATABASE IF NOT EXISTS McDonaldsDB;
USE McDonaldsDB;

-- Employee Table
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Position VARCHAR(50),
    Salary DECIMAL(10, 2),
    StoreID INT
);

-- Store Table 
CREATE TABLE Store (
    StoreID INT PRIMARY KEY AUTO_INCREMENT,
    StoreLocation VARCHAR(100),
    ManagerID INT,
    FOREIGN KEY (ManagerID) REFERENCES Employee(EmployeeID) ON DELETE SET NULL
);

-- Product Table
CREATE TABLE Product (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2),
    Category VARCHAR(50)
);

-- Customer Table
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerName VARCHAR(100),
    CustomerPhone VARCHAR(15)
);

-- Order Table
CREATE TABLE `Order` (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    EmployeeID INT,
    CustomerID INT,
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID) ON DELETE CASCADE,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID) ON DELETE CASCADE
);

-- OrderDetails Table
CREATE TABLE OrderDetails (
    OrderDetailsID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES `Order`(OrderID) ON DELETE CASCADE,
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID) ON DELETE CASCADE
);

-- Store Data
INSERT INTO Store (StoreLocation, ManagerID) VALUES ('New York', NULL);
INSERT INTO Store (StoreLocation, ManagerID) VALUES ('Los Angeles', NULL);
INSERT INTO Store (StoreLocation, ManagerID) VALUES ('Chicago', NULL);

-- Employee Data
INSERT INTO Employee (FirstName, LastName, Position, Salary, StoreID) 
VALUES ('John', 'Doe', 'Manager', 60000.00, 1);
INSERT INTO Employee (FirstName, LastName, Position, Salary, StoreID) 
VALUES ('Jane', 'Smith', 'Cashier', 35000.00, 2);
INSERT INTO Employee (FirstName, LastName, Position, Salary, StoreID) 
VALUES ('Michael', 'Johnson', 'Cook', 40000.00, 3);

UPDATE Store SET ManagerID = 1 WHERE StoreID = 1;
UPDATE Store SET ManagerID = 2 WHERE StoreID = 2;
UPDATE Store SET ManagerID = 3 WHERE StoreID = 3;

-- Product Data
INSERT INTO Product (ProductName, Price, Category) 
VALUES ('Big Mac', 5.99, 'Burger');
INSERT INTO Product (ProductName, Price, Category) 
VALUES ('French Fries', 2.99, 'Sides');
INSERT INTO Product (ProductName, Price, Category) 
VALUES ('Coca-Cola', 1.99, 'Beverage');

-- Customer Data
INSERT INTO Customer (CustomerName, CustomerPhone) 
VALUES ('Alice Brown', '555-1234');
INSERT INTO Customer (CustomerName, CustomerPhone) 
VALUES ('Bob White', '555-5678');
INSERT INTO Customer (CustomerName, CustomerPhone) 
VALUES ('Charlie Green', '555-9876');

-- Order Data
INSERT INTO `Order` (OrderDate, TotalAmount, EmployeeID, CustomerID) 
VALUES ('2024-08-12', 10.97, 1, 1);
INSERT INTO `Order` (OrderDate, TotalAmount, EmployeeID, CustomerID) 
VALUES ('2024-08-12', 8.98, 2, 2);
INSERT INTO `Order` (OrderDate, TotalAmount, EmployeeID, CustomerID) 
VALUES ('2024-08-13', 7.98, 3, 3);

-- Order Details Data
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) 
VALUES (1, 1, 1);  -- Big Mac for Order 1
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) 
VALUES (1, 2, 1);  -- French Fries for Order 1
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) 
VALUES (2, 1, 1);  -- Big Mac for Order 2
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) 
VALUES (2, 3, 1);  -- Coca-Cola for Order 2
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) 
VALUES (3, 2, 1);  -- French Fries for Order 3
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) 
VALUES (3, 3, 1);  -- Coca-Cola for Order 3





