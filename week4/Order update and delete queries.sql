
USE week4_db;
-- Insert new order
INSERT INTO Orders
(Order_ID, Customer_ID, Order_Date, Total_Amount, Order_Status)
VALUES
(5005, 102, '2026-09-29', 25000.00, 'Pending');


-- Insert purchased product
INSERT INTO Order_Details
(Order_Detail_ID, Order_ID, Product_ID, Quantity, Price)
VALUES
(8, 5005, 204, 1, 25000.00);

UPDATE Orders
SET Order_Status = 'Delivered'
WHERE Order_ID = 5005;

UPDATE Order_Details
SET Quantity = 2
WHERE Order_Detail_ID = 8;

UPDATE Orders
SET Total_Amount = 50000.00
WHERE Order_ID = 5005;

DELETE FROM Order_Details
WHERE Order_ID = 5005;

DELETE FROM Orders
WHERE Order_ID = 5005;