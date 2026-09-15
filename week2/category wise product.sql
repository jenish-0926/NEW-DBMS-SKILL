USE week2_db;
SELECT p.product_id,p.product_name,p.price,c.category_name
FROM product p
JOIN category c
ON p.category_id=c.category_id;

SELECT c.category_name,COUNT(p.product_id) AS product_count
FROM category c
LEFT JOIN product p
ON c.category_id=p.category_id
GROUP BY c.category_id,c.category_name;

SELECT c.category_name,p.product_name,p.price
FROM category c
JOIN product p
ON c.category_id = p.category_id
WHERE p.price = (
    SELECT MAX(p2.price)
    FROM product p2
    WHERE p2.category_id = p.category_id
);

SELECT c.category_name,
       COUNT(p.product_id) AS product_count
FROM category c
JOIN product p
ON c.category_id = p.category_id
GROUP BY c.category_id, c.category_name
HAVING COUNT(p.product_id) > 5;

SELECT c.category_name,
       AVG(p.price) AS average_price
FROM category c
JOIN product p
ON c.category_id = p.category_id
GROUP BY c.category_id, c.category_name;
