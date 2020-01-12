-- EMPLOYEE INFORMAION SYSTEM --

-- TABLE CREATION --
CREATE TABLE employee(
    empid INT PRIMARY KEY,
    ename VARCHAR(10),
    salary INT,
    department VARCHAR(10),
    age INT
);

-- TABLE CREATED --

--- SCHEMA DIAGRAM ---
--  +------------+-------------+------+-----+---------+-------+
--  | Field      | Type        | Null | Key | Default | Extra |
--  +------------+-------------+------+-----+---------+-------+
--  | empid      | int(11)     | NO   | PRI | NULL    |       |
--  | ename      | varchar(10) | YES  |     | NULL    |       |
--  | salary     | int(11)     | YES  |     | NULL    |       |
--  | department | varchar(10) | YES  |     | NULL    |       |
--  | age        | int(11)     | YES  |     | NULL    |       |
--  +------------+-------------+------+-----+---------+-------+

INSERT INTO employee VALUES
(
    101, 'AKKU', 10000, 'SALES', 25
),
(
    102, 'ACHU', 50000, 'PURACHASE', 30
),
(
    103, 'AMMU', 5000, 'INCOME', 35
),
(
    104, 'THENNAL', 20000, 'SALES', 30
),
(
    105, 'CHINNU', 55000, 'PURCHASE', 40
);


-- A) --
SELECT COUNT(empid) AS TOTAL FROM employee;

-- B) --
SELECT department, MAX(age), AS OLDEST FROM employee GROUP BY department;

-- C) --
SELECT department, AVG(age), FROM employee GROUP BY department;

-- D) -- 
SELECT department, AVG(salary) FROM employee GROUP BY department;

-- E) --
SELECT MIN(salary) AS LOWEST salary FROM employee;

-- F) --
SELECT COUNT(empid) AS employee IN purchase department FROM employee WHERE department = 'PURCHASE';

-- G) --
SELECT MAX(salary) AS HIGHEST salary FROM employee WHERE department = 'SALES';

-- H) --
SELECT MAX(salary) MIN(salary) 'MAX-MIN SALARY' FROM employee;
