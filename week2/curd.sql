USE week2_db;
INSERT INTO product(product_name,price,category_id)
VALUES('Night Cream',1100,1);

SELECT * FROM product
WHERE product_id=18;

UPDATE product
SET price=1300
WHERE product_id=18;

SELECT * FROM product
WHERE product_id=18;

DELETE FROM product
WHERE product_id=19;

SELECT * FROM product;