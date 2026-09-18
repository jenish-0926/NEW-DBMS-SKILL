CREATE DATABASE weeek3_db;

USE weeek3_db;
CREATE TABLE seller (
    seller_id INT PRIMARY KEY AUTO_INCREMENT,
    seller_name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    phone VARCHAR(15)
);

CREATE TABLE inventory (
    inventory_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10,2),
    seller_id INT,
    FOREIGN KEY (seller_id) REFERENCES seller(seller_id)
);

INSERT INTO seller (seller_name, email, phone)
VALUES
('Ravi Stores', 'ravi@gmail.com', '9876543210'),
('Kumar Traders', 'kumar@gmail.com', '9876543211'),
('Tech World', 'techworld@gmail.com', '9876543212');


INSERT INTO inventory (product_name, quantity, price, seller_id)
VALUES
('Laptop', 10, 55000, 1),
('Mouse', 25, 500, 1),
('Keyboard', 15, 1200, 2),
('Monitor', 0, 12000, 2),
('Headphones', 30, 2000, 1),
('Webcam', 5, 2500, 3),
('Printer', 0, 15000, 3);


SELECT * FROM seller;
SELECT * FROM inventory;


SELECT 
    i.inventory_id,
    i.product_name,
    i.quantity,
    i.price,
    s.seller_name
FROM inventory i
JOIN seller s
ON i.seller_id = s.seller_id;


INSERT INTO inventory (product_name, quantity, price, seller_id)
VALUES ('Speaker', 20, 3000, 2);


UPDATE inventory
SET quantity = 35
WHERE inventory_id = 1;


DELETE FROM inventory
WHERE inventory_id = 8;

SELECT COUNT(*) AS total_products_available
FROM inventory
WHERE quantity > 0;


SELECT *
FROM inventory
WHERE quantity = 0;


SELECT product_name, quantity
FROM inventory
WHERE quantity = (SELECT MAX(quantity) FROM inventory);


SELECT AVG(quantity) AS average_inventory_quantity
FROM inventory;

SELECT 
    s.seller_name,
    COUNT(i.inventory_id) AS total_products,
    SUM(i.quantity) AS total_quantity
FROM seller s
LEFT JOIN inventory i
ON s.seller_id = i.seller_id
GROUP BY s.seller_id, s.seller_name;