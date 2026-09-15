USE week2_db;
INSERT INTO category(category_name) VALUES
('Skincare'),
('Makeup'),
('Haircare'),
('Fragrance');

INSERT INTO product(product_name,price,category_id) VALUES
('Face Wash',450,1),
('Moisturizer',700,1),
('Sunscreen',850,1),
('Face Serum',1200,1),
('Lip Balm',250,1),
('Face Mask',500,1),
('Foundation',900,2),
('Lipstick',650,2),
('Mascara',550,2),
('Eyeliner',400,2),
('Blush',700,2),
('Shampoo',600,3),
('Conditioner',550,3),
('Hair Serum',750,3),
('Hair Mask',900,3),
('Perfume',1500,4),
('Body Mist',850,4),
('Deodorant',500,4);

SELECT * FROM category;

SELECT * FROM product;
