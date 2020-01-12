-- PRODUCT- INFORMATION SYSTEM --

-- TABLE CREATION --
CREATE TABLE product(
    product_code INT PRIMARY KEY,
    product_name VARCHAR(15),
    category VARCHAR(15),
    quantity INT,
    price INT
);
-- TABLE CREATED --

--- SCHEMA DIAGRAM ---
--  +--------------+-------------+------+-----+---------+-------+
--  | Field        | Type        | Null | Key | Default | Extra |
--  +--------------+-------------+------+-----+---------+-------+
--  | product_code | int(11)     | NO   | PRI | NULL    |       |
--  | product_name | varchar(15) | YES  |     | NULL    |       |
--  | category     | varchar(15) | YES  |     | NULL    |       |
--  | quantity     | int(11)     | YES  |     | NULL    |       |
--  | price        | int(11)     | YES  |     | NULL    |       |
--  +--------------+-------------+------+-----+---------+-------+

INSERT INTO product VALUES
(
    101, 'CUTEE', 'SOAP', 40, 40
),
(
    102, 'VIJALA', 'WASHING POWDER', 550, 550
),
(
    103, 'SANDOOR', 'BATH SOAP', 120, 55
), 
(
    104, 'CLOSEUP', 'PASTE', 150, 40
),
(
    105, 'COLGATE', 'PASTE', 150, 40
)

SELECT * FROM product;

-- A) --
SELECT * FROM product ORDER BY product_name DESC;

-- B) --
SELECT product_code, product_name, FROM product WHERE price BETWEEN 20 AND 50;

-- C) --
-- DISPLAY THE DETAILS OF PRODUCT WHICH BELONGS TO THE CATOGERY OF 'BATH SOAP', 'PASTE' OR 'WASHING POWDER'
SELECT * FROM PRODUCT WHERE category IN ('BATH SOAP', 'PASTE', 'WASHING POWDER');


-- D) --
SELECT product_name FROM productWHERE quantity<100 AND quantity>500;

-- E) --
SELECT product_name FROM product WHERE product_name LIKE 'S%';

-- F) --
SELECT product_name FROM product WHERE category NOT IN 'PASTE';

-- G) --
SELECT product_name FROM product WHERE product_namelike '-u%' AND category = 'SOAP';

