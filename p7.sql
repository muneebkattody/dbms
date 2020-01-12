-- REMPLOYEE DETAILS --

CREATE TABLE employee
(
    ename VARCHAR(10),
    city VARCHAR(10)
);

INSERT INTO employee VALUES
(
    'RAHUL', 'KOZHIKODE'
),
(
    'ROHAN', 'PALAKKAD'
),
(
    'ROHITH', 'KOTTAYAM'
),
(
    'RESHMA', 'KALPATTA'
),
(
    'NEENU', 'ALUVA'
);

SELECT * FROM employee;
--  +--------+-----------+
--  | ename  | city      |
--  +--------+-----------+
--  | RAHUL  | KOZHIKODE |
--  | ROHAN  | PALAKKAD  |
--  | ROHITH | KOTTAYAM  |
--  | RESHMA | KALPATTA  |
--  | NEENU  | ALUVA     |
--  +--------+-----------+


CREATE TABLE WORKS(
    ename VARCHAR(10),
    name VARCHAR(10),
    salary INT
);

INSERT INTO WORKS VALUES
(
    'RAHUL', 'INFOSYS', 10000
),
(
    'ROHAN', 'WIPRO', 25000
),
(
    'ROHITH', 'INFOSYS', 12000
),
(
    'RESHMA', 'WIPRO', 9500
),
(
    'NEENU', 'INFOSYS', 9000
);

SELECT * FROM WORKS;
--  +--------+---------+--------+
--  | ename  | name    | salary |
--  +--------+---------+--------+
--  | RAHUL  | INFOSYS |  10000 |
--  | ROHAN  | WIPRO   |  25000 |
--  | ROHITH | INFOSYS |  12000 |
--  | RESHMA | WIPRO   |   9500 |
--  | NEENU  | INFOSYS |   9000 |
--  +--------+---------+--------+

CREATE TABLE company(
    ename VARCHAR(10),
    city VARCHAR(10)
);

INSERT INTO company VALUES
(
    'WIPRO', 'COCHIN'
),
(
    'INFOSYS', 'BANGALORE'
);

SELECT * FROM company;
--  +---------+-----------+
--  | ename   | city      |
--  +---------+-----------+
--  | WIPRO   | COCHIN    |
--  | INFOSYS | BANGALORE |
--  +---------+-----------+


-- A) --
SELECT ename FROM WORKS WHERE name = 'INFOSYS';
--  +--------+
--  | ename  |
--  +--------+
--  | RAHUL  |
--  | ROHITH |
--  | NEENU  |
--  +--------+

-- b) --
SELECT employee.ename, employee.city FROM employee WHERE employee.ename IN(SELECT ename FROM WORKS WHERE name = 'WIPRO');
--  +--------+----------+
--  | ename  | city     |
--  +--------+----------+
--  | ROHAN  | PALAKKAD |
--  | RESHMA | KALPATTA |
--  +--------+----------+


-- C) --
SELECT employee.ename, employee.city FROM employee WHERE employee.ename IN(SELECT ename FROM WORKS WHERE name = 'INFOSYS' AND salary>10000);
--  +--------+----------+
--  | ename  | city     |
--  +--------+----------+
--  | ROHITH | KOTTAYAM |
--  +--------+----------+

-- D) --
SELECT employee.ename, employee.city FROM employee, company WHERE employee.city = company.city;
-- Empty set --

-- E) --
SELECT employee.ename FROM employee WHERE employee.ename NOT IN(SELECT WORKS.ename FROM WORKS WHERE name = 'WIPRO');
--  +--------+
--  | ename  |
--  +--------+
--  | RAHUL  |
--  | ROHITH |
--  | NEENU  |
--  +--------+

SELECT name FROM WORKS GROUP BY name HAVING COUNT(ename)>=ALL(SELECT COUNT(ename) FROM WORKS GROUP BY name);
--  +---------+
--  | name    |
--  +---------+
--  | INFOSYS |
--  +---------+

