-- SALES INFORMATION SYSTEM --

--------------------
-- TABLE CREATION --
--------------------

CREATE TABLE sales_man
(
    sno INT PRIMARY KEY,
    sname VARCHAR(20) NOT NULL,
    place VARCHAR(20),
    phone VARCHAR(10) UNIQUE
);

-- TABLE CREATED --


-- SCHEMA DIAGRAM --
-- +-------+-------------+------+-----+---------+-------+ --
-- | Field | Type        | Null | Key | Default | Extra | --
-- +-------+-------------+------+-----+---------+-------+ --
-- | sno   | int(11)     | NO   | PRI | NULL    |       | --
-- | sname | varchar(20) | NO   |     | NULL    |       | --
-- | place | varchar(20) | YES  |     | NULL    |       | --
-- | phone | varchar(10) | YES  | UNI | NULL    |       | --
-- +-------+-------------+------+-----+---------+-------+ --

-- TABLE CREATION --
CREATE TABLE sales_order
(
    order_no INT PRIMARY KEY,
    order_date DATE NOT NULL,
    sno INT,
    del_type VARCHAR(20),
    order_status VARCHAR(20),
    CONSTRAINT P FOREIGN KEY(sno) REFERENCES sales_man(sno),
    CHECK(del_type = 'P' OR del_type = "F"),
    CHECK(order_status = 'INPROCESS' OR order_status = 'FULLFILLED' OR order_status = 'BACKORDER' OR order_status = "CANCELLED")
);

-- TABLE CREATED --

-- SCHEMA DIAGRAM --
--  +--------------+-------------+------+-----+---------+-------+
--  | Field        | Type        | Null | Key | Default | Extra |
--  +--------------+-------------+------+-----+---------+-------+
--  | order_no     | int(11)     | NO   | PRI | NULL    |       |
--  | order_date   | date        | NO   |     | NULL    |       |
--  | sno          | int(11)     | YES  | MUL | NULL    |       |
--  | del_type     | varchar(20) | YES  |     | NULL    |       |
--  | order_status | varchar(20) | YES  |     | NULL    |       |
--  +--------------+-------------+------+-----+---------+-------+

-- A) --
INSERT INTO sales_man VALUES
(
    101, 'JAZ2', 'VATAKARA', '8978456512'
),
(
    102, 'ASHWATHI', 'KANNUR', '7485961425'
),
(
    103, 'ADITHYAN', 'BANGALORE', '7845659885'
),
(
    104, 'SHERIN', 'THIVANDRUM', '7485961425'
);

SELECT * FROM sales_man;

INSERT INTO sales_order VALUES
(
    35, 2018-09-05, 'P', 'INPROCESS'
),
(
    24, 2019-10-15, 'F', 'FULLFILLED'
),
(
    43, 2019-05-16, 'P', 'BACKDOOR'
),
(
    12, 2019-04-21, 'F', 'CANCELLED'
);

SELECT * FROM sales_order;

-- B) --
ALTER TABLE sales_man DROP PRIMARY KEY
-- THIS UNIQUE KEY IS REFEREENCED BY SOME FORIGN KEY --

-- C) --
ALTER 
