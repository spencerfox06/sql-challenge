--Drop table if exists
--DROP TABLE departments;
--DROP TABLE dept_emp;
--DROP TABLE dept_manager;
--DROP TABLE employees;
--DROP TABLE salaries;
--DROP TABLE titles;

--Create departments table
CREATE TABLE departments (
	dept_name VARCHAR(255),
	dept_no VARCHAR(255),
	PRIMARY KEY (dept_name)
);

--SELECT * FROM departments

--Create dept_emp table
CREATE TABLE dept_emp (
	emp_no SERIAL,
	dept_no VARCHAR(255),
	dept_name VARCHAR(255)
	
);

--SELECT * FROM dept_emp

--Create dept_manager table
CREATE TABLE dept_manager (
	dept_no VARCHAR(255),
	emp_no INT,
	dept_name VARCHAR(255)

);

--SELECT * FROM dept_manager

--Create employees table
CREATE TABLE employees (
	emp_no SERIAL,
	emp_title_id VARCHAR(255),
	birth_date DATE,
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	sex VARCHAR(255),
	hire_date DATE,
	PRIMARY KEY (emp_no)
);

--SELECT * FROM employees

--Create salaries table
CREATE TABLE salaries (
	emp_no SERIAL,
	salary INT,
	PRIMARY KEY (emp_no)
);



--SELECT * FROM salaries

--Create titles table
CREATE TABLE titles (
	title_id VARCHAR(255),
	title VARCHAR(255),
	PRIMARY KEY (title_id)
);

--SELECT * FROM titles