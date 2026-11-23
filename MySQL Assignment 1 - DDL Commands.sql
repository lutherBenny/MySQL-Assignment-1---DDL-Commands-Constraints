-- MYSQL Assignment 1 DDL Commands 

-- QUESTION 1: Table Creation (CREATE) 

-- Task 1: Create Database
CREATE DATABASE employee;

-- Select Database
USE employee;

-- Task 2: Create Departments Table

CREATE TABLE Departments (
     department_id INT PRIMARY KEY,
     department_name VARCHAR(100)
);

-- Task 3: Create Location Table

CREATE TABLE Location (
     location_id INT PRIMARY KEY,
     location VARCHAR(30)
);

-- Task 4: Create Employees Table

CREATE TABLE Employees (
     employee_id INT PRIMARY KEY,
     employee_name VARCHAR(50),
     gender ENUM('M' , 'F'),
     hire_date DATE,
     designation VARCHAR(100),
     department_id INT,
	 location_id INT,
     salary DECIMAL(10,2),
     
     FOREIGN KEY(department_id) REFERENCES Departments(department_id),
     FOREIGN KEY(location_id) REFERENCES  Location(location_id)
);

-- Add age column to Employees table

ALTER TABLE Employees
ADD age INT;

SHOW TABLES;

-- QUESTION 2: Table Alteration (ALTER)

-- 2.1 Add a new column named email

ALTER TABLE Employees
ADD email VARCHAR(100); 

-- 2.2 Modify the designation column

ALTER TABLE Employees
MODIFY designation VARCHAR(150);

-- 2.3 Drop the age column

ALTER TABLE Employees
DROP COLUMN age;

-- 2.4 Rename hire_date to date_of_joining

ALTER TABLE Employees
RENAME COLUMN hire_date TO date_of_joining;

-- QUESTION 3: Table Renaming (RENAME)

-- 3.1 Rename Departments table

RENAME TABLE Departments TO Departments_Info;
RENAME TABLE Location  TO Locations;

-- QUESTION 4: Table Truncation (TRUNCATE)

TRUNCATE TABLE Employees;
SELECT * FROM Employees;

-- QUESTION 5: Database & Table Dropping (DROP)

-- 5.1 Drop Employees table
DROP TABLE Employees;

-- 5.2 Drop employee database
DROP DATABASE employee;















