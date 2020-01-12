-- BANK DETAILS --

-- TABLE CREATION --
CREATE TABLE bank_customer(
    accno INT PRIMARY KEY,
    cust_name VARCHAR(20),
    place VARCHAR(20)
);

-- TABLE CREATED --
--- SCHEMA DIAGRAM ---
-- +-----------+-------------+------+-----+---------+-------+
-- | Field     | Type        | Null | Key | Default | Extra |
-- +-----------+-------------+------+-----+---------+-------+
-- | accno     | int(11)     | NO   | PRI | NULL    |       |
-- | cust_name | varchar(20) | YES  |     | NULL    |       |
-- | place     | varchar(20) | YES  |     | NULL    |       |
-- +-----------+-------------+------+-----+---------+-------+

INSERT INTO bank_customer VALUES
(
    1001, 'Appu', 'kannur'
),
(
    1002, 'Manu', 'Calicut'
),
(
    1003, 'Achu', 'Cochin'
),
(
    1004, 'Anu', 'Mahi'
);

-- TABLE CREATION --
CREATE TABLE deposite(
    accno INT,
    deposite INT,
    amount INT,
    FOREIGN KEY(accno) REFERENCES bank_customer(accno)
);

--- SCHEMA DIAGRAM ---
--  +----------+---------+------+-----+---------+-------+
--  | Field    | Type    | Null | Key | Default | Extra |
--  +----------+---------+------+-----+---------+-------+
--  | accno    | int(11) | YES  | MUL | NULL    |       |
--  | deposite | int(11) | YES  |     | NULL    |       |
--  | amount   | int(11) | YES  |     | NULL    |       |
--  +----------+---------+------+-----+---------+-------+

INSERT INTO deposite VALUES(1003, 514, 1500),(1005,614,10000);
SELECT * FROM deposite;

-- TABLE CREATION --
CREATE TABLE loan(
    accno INT,
    loanno INT,
    lamount INT,
    FOREIGN KEY(accno) REFERENCES bank_customer(accno)
);

-- TABLE CREATED --
--- SCHEMA DIAGRAM ---
--  +---------+---------+------+-----+---------+-------+
--  | Field   | Type    | Null | Key | Default | Extra |
--  +---------+---------+------+-----+---------+-------+
--  | accno   | int(11) | YES  | MUL | NULL    |       |
--  | loanno  | int(11) | YES  |     | NULL    |       |
--  | lamount | int(11) | YES  |     | NULL    |       |
--  +---------+---------+------+-----+---------+-------+

INSERT INTO loan VALUES
(
    1001,114,25000
),
(
    1002, 214, 20000
),
(
    1005, 314, 50000
);

SELECT * from loan;

-- A) --
SELECT * FROM bank_customer;

-- B) --
SELECT B.accno, B.cust_name, B.place, D.amount, from bank_customer B, deposite D WHERE B.accno = L.accno;

-- C) --
SELECT B.accn, B.cust_name, B.place, L.amount, FROM bank_customer B, loan L WHERE B.accno = L.accno;

-- D) --
SELECT C.cust_name FOM bank_customer C WHERE C.accno IN(SELECT D.accno FROM deposite D.loan WHERE D.accno = loan.accno)

-- E) --
SELECT C.cust_name FROM bank_customer C WHERE C.accno NOT IN(SELECT accno FROM deposite UNION SELECT accno FROM loan);