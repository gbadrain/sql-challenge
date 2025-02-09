-- Drop existing tables if they exist
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

-- Create titles table
CREATE TABLE titles (
    title_id VARCHAR(10) PRIMARY KEY,
    title VARCHAR(50) NOT NULL
);

-- Create employees table
CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(10) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    sex CHAR(1) NOT NULL,
    hire_date DATE NOT NULL
);


-- Create departments table
CREATE TABLE departments (
    dept_no CHAR(4) PRIMARY KEY,
    dept_name VARCHAR(40) NOT NULL UNIQUE
);

-- Create dept_manager table
CREATE TABLE dept_manager (
    dept_no CHAR(4),
    emp_no INT,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Create dept_emp table
CREATE TABLE dept_emp (
    emp_no INT,
    dept_no CHAR(4),
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);



-- Create salaries table
CREATE TABLE salaries (
    emp_no INT,
    salary INT NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


-- Import data from titles.csv
-- View the table to ensure all data has been imported correctly
SELECT * FROM titles;

-- Import data from employees.csv
-- View the table to ensure all data has been imported correctly
SELECT * FROM employees;


-- Import data from departments.csv
-- View the table to ensure all data has been imported correctly
SELECT * FROM departments;

-- Import data from dept_manager.csv
-- View the table to ensure all data has been imported correctly
SELECT * FROM dept_manager;



-- Import data from dept_emp.csv
-- View the table to ensure all data has been imported correctly
SELECT * FROM dept_emp;


-- Import data from salaries.csv
-- View the table to ensure all data has been imported correctly
SELECT * FROM salaries;


--TESTING
--TESTING 2 FOR PULLING INTO LOCAL*/



