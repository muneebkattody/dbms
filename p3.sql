-- HOSPITAL INFORMAION SYSTEM --

-- TABLE CREATION --
CREATE TABLE hospital(
    doctorid VARCHAR(5) PRIMARY KEY,
    doctor_name VARCHAR(15),
    department VARCHAR(15),
    qualification VARCHAR(15),
    experience INT
);

-- TABLE CREATED --

--- SCHEMA DIAGRAM ---
--  +---------------+-------------+------+-----+---------+-------+
--  | Field         | Type        | Null | Key | Default | Extra |
--  +---------------+-------------+------+-----+---------+-------+
--  | doctorid      | varchar(5)  | NO   | PRI | NULL    |       |
--  | doctor_name   | varchar(15) | YES  |     | NULL    |       |
--  | department    | varchar(15) | YES  |     | NULL    |       |
--  | qualification | varchar(15) | YES  |     | NULL    |       |
--  | experience    | int(11)     | YES  |     | NULL    |       |
--  +---------------+-------------+------+-----+---------+-------+

-- A) --
INSERT INTO hospital VALUES
(
    'doo1', 'Aravind', 'neurology', 'MD', 5
),
(
    'doo2', 'Dhanya', 'Skin', 'MBBS', 6
),
(
    'doo3', 'Shivakumar', 'Skin', 'MD', 4
),
(
    'doo4', 'Sidharth', 'pediatrition', 'MBBS', 7
),
(
    'doo5', 'Premakumar', 'dental', 'BDS', 8
);


-- B) --
SELECT * FROM hospital

-- C) --
SELECT * FROM hospital WHERE qualification = 'MD';

-- d) --
SELECT * FROM hospital WHERE experience>5 AND qualification <> 'MD';

-- E) --
SELECT doctor_name FROM hospital WHERE dept = 'doo3';

-- F) --
SELECT doctor_name FROM hospital WHERE doctorid = 'doo3';

-- ONE ROW UPDATED --

SELECT * FROM hospital;

-- G) --
DELETE FROM hospital WHERE doctorid = 'd005';
-- ONE ROW UPDATED --