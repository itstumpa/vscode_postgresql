-- Active: 1767070295093@@127.0.0.1@5432@tumpa
CREATE DATABASE red;

SELECT current_database();

SELECT datname FROM pg_database;

CREATE TABLE hello(
emp_id SERIAL PRIMARY KEY,
fname VARCHAR(100) NOT NULL,
lname VARCHAR(100) NOT NULL,
email VARCHAR(100) NOT NULL UNIQUE,
address TEXT,
dept VARCHAR(50),
salary DECIMAL(10, 2) DEFAULT 20000.00,
hire_date DATE NOT NULL DEFAULT CURRENT_DATE

);

INSERT INTO hello(emp_id, fname, lname, email, address, dept, salary, hire_date)
VALUES
(2, 'Raji', 'Sharma', 'Raji.sharma@example.com', 'frrrrrrrrr rr rr rr', 'IT', 50000.00, '2020-02-15'),
(3, 'Muy', 'Sharma', 'Muy.sharma@example.com', 'frrrrrrrrr rr rr rr', 'IT', 50000.00, '2020-11-15'),
(4, 'Raj', 'Sharma', 'Raj.sharma@example.com', 'frrrrrrrrr rr rr rr', 'IT', 50000.00, '2020-01-15'),
(5, 'Sumpa', 'Sharma', 'Sumpa.sharma@example.com', 'frrrrrrrrr rr rr rr', 'IT', 50000.00, '2020-08-15');

SELECT * FROM hello

-- jodi duitar akta match korle dibe
-- WHERE lname = 'Sharma' OR dept='IT';

-- jodi sob gulo match korte chai tahole AND use korbo
-- WHERE lname = 'Sharma' AND dept='IT';

-- ekta specific row dekhte chaile
-- WHERE emp_id = 3;
-- WHERE fname = 'Raji';

-- limit kore dekhte chaile
-- SELECT * FROM hello LIMIT 5 OFFSET 5;

-- To delete a database
-- DATABASE DROP tumpa;

-- To LIKE operator
-- WHERE fname LIKE 'R%';  -- R diye suru hoye je kono kichu
-- WHERE fname LIKE '%n';  -- n diye ses hoye je kono kichu 
-- WHERE fname LIKE '%u%';  -- jekono jaygay u thakle
-- WHERE fname LIKE '_a%';  -- 2nd letter a hobe
-- WHERE fname LIKE 'R%a';  -- R diye suru hobe and a diye ses hobe
-- WHERE fname ILIKE 'r%';  -- case insensitive
-- WHERE fname ILIKE '%A';  -- case insensitive
-- WHERE fname ILIKE '%U%';  -- case insensitive
-- WHERE fname ILIKE '_A%';  -- case insensitive
-- WHERE fname ILIKE 'R___';  -- case insensitive
-- WHERE fname ILIKE 'R%a';  -- case insensitive

-- To filter with salary
-- To update data
UPDATE hello SET salary = 90000.00 WHERE emp_id = 3;
UPDATE hello SET dept = 'HR' WHERE emp_id = 4;
-- To delete data
DELETE FROM hello WHERE emp_id = 3;
DELETE FROM hello WHERE lname = 'Sharma' AND dept='IT';
-- To drop table
DROP TABLE das;