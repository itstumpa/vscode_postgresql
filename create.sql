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

-- ALTER rename COLUMN name
ALTER TABLE hello 
RENAME COLUMN salary TO salaries;

-- add new COLUMN
ALTER TABLE hello
ADD COLUMN phone VARCHAR(15);

SELECT * FROM hello;







DELETE FROM hello WHERE emp_id = 3;
DELETE FROM hello WHERE lname = 'Sharma' AND dept='IT';
-- To drop table
DROP TABLE das;


CREATE TABLE users(
order_id SERIAL PRIMARY KEY,
order_date DATE NOT NULL DEFAULT CURRENT_DATE,
customer_name VARCHAR(100) NOT NULL,
product_name VARCHAR(100) NOT NULL,
quantity INT NOT NULL,
email VARCHAR(100) NOT NULL,
phone VARCHAR(15) NOT NULL,
price DECIMAL(10, 2) NOT NULL
);   

INSERT INTO users(order_id, order_date, customer_name, product_name, quantity, email, phone, price)
VALUES
(1, '2023-01-15', 'Alice', 'Laptop', 1, 'tt@gmailcom', 0123457638,   1200.00),
(2, '2023-02-20', 'Bob', 'Smartphone', 2, 'bob@gmail.com', 0123456789, 800.00),
(3, '2023-03-10', 'Charlie', 'Tablet', 1, 'charlie@gmail.com', 0123456789, 500.00),
(4, '2023-04-05', 'David', 'Headphones', 3, 'david@gmail.com', 0123456789, 150.00),
(5, '2023-05-12', 'Eve', 'Smartwatch', 1, 'eve@gmail.com', 0123456789, 300.00);

SELECT * FROM users;

CREATE TABLE orders(
order_id SERIAL PRIMARY KEY,
order_date DATE NOT NULL DEFAULT CURRENT_DATE,
customer_name VARCHAR(100) NOT NULL,
product_name VARCHAR(100) NOT NULL,
quantity INT NOT NULL,
price DECIMAL(10, 2) NOT NULL
);   
 
INSERT INTO orders(order_id, order_date, customer_name, product_name, quantity, price)
VALUES
(1, '2023-01-15', 'Alice', 'Laptop', 1, 1200.00),
(2, '2023-02-20', 'Bob', 'Smartphone', 2, 800.00),
(3, '2023-03-10', 'Charlie', 'Tablet', 1, 500.00),
(4, '2023-04-05', 'David', 'Headphones', 3, 150.00),
(5, '2023-05-12', 'Eve', 'Smartwatch', 1, 300.00);





SELECT * FROM orders;