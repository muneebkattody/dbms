--CUSTOMER RELATION SYSTEM--

--TABLE CREATION--

CREATE TABLE customer
(
    cust_no VARCHAR(10),
    cust_name VARCHAR(50),
    cust_age INT,
    cust_phone VARCHAR(10),
    PRIMARY KEY(cust_no,cust_phone)
);

--TABLE CREATED--

-- +------------+-------------+------+-----+---------+-------+  --
-- | Field      | Type        | Null | Key | Default | Extra |  --
-- +------------+-------------+------+-----+---------+-------+  --
-- | cust_no    | varchar(10) | NO   | PRI | NULL    |       |  --
-- | cust_name  | varchar(50) | YES  |     | NULL    |       |  --
-- | cust_age   | int(11)     | YES  |     | NULL    |       |  --
-- | cust_phone | varchar(10) | NO   | PRI | NULL    |       |  --  
-- +------------+-------------+------+-----+---------+-------+  --


-- A) --

INSERT INTO customer VALUES
( 
 'cool', 'Achu', 25, '9856745896'
),
( 
 'coo2', 'Sachu', 30, '8565456525'
),
( 
 'coo3', 'unni', 27, '8565452563'
),
( 
 'coo4', 'Abhi', 22, '8565452563'
),
( 
 'coo5', 'vinu', 26, '8956456523'
);


SELECT * FROM customer;

-- B) --

-- Add new field d_birth with date type --

ALTER TABLE customer ADD dob DATE;

-- TABLE ALTERED --

SELECT * FROM customer;

-- C) --

-- Create another table cust_phone with field cust_name and phone from customer table --

CREATE TABLE cust_phone(
    cust_name VARCHAR(10),
    cust_phone VARCHAR(10),
    CONSTRAINT P FOREIGN KEY(cust_name) REFERENCES customer(cust_name),
    FOREIGN KEY(cust_phone) REFERENCES customer(cust_phone)
);

-- TABLE CREATED --

-- SCHEMA DIAGRAM --

-- +------------+-------------+------+-----+---------+-------+ --
-- | Field      | Type        | Null | Key | Default | Extra | --
-- +------------+-------------+------+-----+---------+-------+ --
-- | cust_name  | varchar(10) | YES  | MUL | NULL    |       | --
-- | cust_phone | varchar(10) | YES  | MUL | NULL    |       | --
-- +------------+-------------+------+-----+---------+-------+ --

-- D) --
ALTER TABLE customer DROP COLUMN;

-- TABLE ALTERED --

SELECT * FROM customer;

-- E) --
ALTER TABLE customer MODIFY cust_name VARCHAR(25);

-- F) --
TRUNEAT TABLE customer;

-- G) --
ALTER TABLE customer RENAME TO cust;

-- TABLE ALTERED --

-- H) --
DROP TABLE cust
-- TABLE DROPED --