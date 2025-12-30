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

SELECT * FROM hello;

DATABASE DROP tumpa;