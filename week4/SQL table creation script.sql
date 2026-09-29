CREATE DATABASE week4_db;
USE week4_db;

-- Create Customer table
CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Phone VARCHAR(15)
);


-- Create Product table
CREATE TABLE Product (
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(100) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    Stock INT NOT NULL,

    CHECK (Price >= 0),
    CHECK (Stock >= 0)
);


-- Create Orders table
CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Customer_ID INT NOT NULL,
    Order_Date DATE NOT NULL,
    Total_Amount DECIMAL(10,2) NOT NULL,
    Order_Status VARCHAR(20) NOT NULL,

    FOREIGN KEY (Customer_ID)
    REFERENCES Customer(Customer_ID),

    CHECK (Total_Amount >= 0),
    CHECK (Order_Status IN ('Pending', 'Shipped', 'Delivered'))
);


-- Create Order_Details table
CREATE TABLE Order_Details (
    Order_Detail_ID INT PRIMARY KEY,
    Order_ID INT NOT NULL,
    Product_ID INT NOT NULL,
    Quantity INT NOT NULL,
    Price DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (Order_ID)
    REFERENCES Orders(Order_ID),

    FOREIGN KEY (Product_ID)
    REFERENCES Product(Product_ID),

    CHECK (Quantity > 0),
    CHECK (Price >= 0)
);

  
