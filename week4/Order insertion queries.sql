USE week4_db;
-- Insert Customer records

INSERT INTO Customer
(Customer_ID, Customer_Name, Email, Phone)
VALUES
(101, 'Rahul', 'rahul@gmail.com', '9876543210'),
(102, 'Priya', 'priya@gmail.com', '9876543211'),
(103, 'Arun', 'arun@gmail.com', '9876543212'),
(104, 'Divya', 'divya@gmail.com', '9876543213');


-- Insert Product records

INSERT INTO Product
(Product_ID, Product_Name, Price, Stock)
VALUES
(201, 'Laptop', 55000.00, 10),
(202, 'Mouse', 800.00, 50),
(203, 'Keyboard', 1500.00, 30),
(204, 'Mobile Phone', 25000.00, 20),
(205, 'Headphones', 2000.00, 25);


-- Insert Order records

INSERT INTO Orders
(Order_ID, Customer_ID, Order_Date, Total_Amount, Order_Status)
VALUES
(5001, 101, '2026-09-25', 56600.00, 'Pending'),
(5002, 102, '2026-09-26', 27000.00, 'Shipped'),
(5003, 101, '2026-09-27', 25000.00, 'Delivered'),
(5004, 103, '2026-09-28', 3500.00, 'Pending');


-- Insert Order_Details records

INSERT INTO Order_Details
(Order_Detail_ID, Order_ID, Product_ID, Quantity, Price)
VALUES
(1, 5001, 201, 1, 55000.00),
(2, 5001, 202, 2, 800.00),
(3, 5002, 204, 1, 25000.00),
(4, 5002, 205, 1, 2000.00),
(5, 5003, 204, 1, 25000.00),
(6, 5004, 203, 1, 1500.00),
(7, 5004, 205, 1, 2000.00);


SELECT*FROM Customer;
SELECT*FROM Product;
SELECT*FROM Orders;
SELECT*FROM Order_Details;