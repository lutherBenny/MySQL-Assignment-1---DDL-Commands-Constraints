-- MYSQL Assignment 1 - Constraints

-- QUESTION 1: DATABASE RECREATION

CREATE DATABASE employee;
USE employee;

-- QUESTION 2: DEPARTMENTS TABLE

CREATE TABLE Departments (
     department_id INT PRIMARY KEY,
     department_name VARCHAR(100) NOT NULL UNIQUE
);

-- QUESTION 3: LOCATION TABLE CONSTRAINTS

CREATE TABLE Locations (
    location_id INT PRIMARY KEY AUTO_INCREMENT,
    location VARCHAR(100) UNIQUE NOT NULL
);

-- Modify location column size

ALTER TABLE Locations
MODIFY location VARCHAR(30) NOT NULL UNIQUE;

DESC Locations;

-- QUESTION 4: EMPLOYEES TABLE CONSTRAINTS

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(50)  NOT NULL,
    gender ENUM('M' , 'F'),
    age INT CHECK(AGE >=18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    department_id INT,
    location_id INT,
    
    FOREIGN KEY (department_id) REFERENCES Departments(department_id),
    FOREIGN KEY (location_id) REFERENCES Locations(location_id)
);

DESC Employees;
SELECT * FROM Employees;













