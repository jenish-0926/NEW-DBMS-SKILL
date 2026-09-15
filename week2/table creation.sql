CREATE DATABASE week2_db;

USE week2_db;

CREATE TABLE category(
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(50) NOT NULL
);

CREATE TABLE product(
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2),
    category_id INT,
    FOREIGN KEY(category_id) REFERENCES category(category_id)
);
