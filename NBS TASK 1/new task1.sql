CREATE DATABASE eecommercedb;

USE eecommercedb;

CREATE TABLE Customer (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone VARCHAR(15) NOT NULL UNIQUE,
    address VARCHAR(255) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50) NOT NULL,
    pincode VARCHAR(10) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
DESC Customer;
INSERT INTO Customer
(first_name, last_name, email, phone, address, city, state, pincode)
VALUES
('Arun', 'Kumar', 'arun@gmail.com', '9876543210',
 '12 Main Street', 'Chennai', 'Tamil Nadu', '600001'),

('Priya', 'Sharma', 'priya@gmail.com', '9876543211',
 '25 Anna Nagar', 'Chennai', 'Tamil Nadu', '600040'),

('Rahul', 'Raj', 'rahul@gmail.com', '9876543212',
 '18 Beach Road', 'Thoothukudi', 'Tamil Nadu', '628001'),

('Anitha', 'Devi', 'anitha@gmail.com', '9876543213',
 '45 Gandhi Street', 'Madurai', 'Tamil Nadu', '625001'),

('Karthik', 'S', 'karthik@gmail.com', '9876543214',
 '10 Park Road', 'Coimbatore', 'Tamil Nadu', '641001');

SELECT * FROM Customer;

UPDATE Customer
SET city = 'Bangalore',
    state = 'Karnataka'
WHERE customer_id = 1;

SELECT * FROM Customer
WHERE customer_id = 1;

DELETE FROM Customer
WHERE customer_id = 5;

SELECT * FROM Customer;