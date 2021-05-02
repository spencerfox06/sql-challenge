--Question 1

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries
	ON employees.emp_no = salaries.emp_no
	
--Question 2

SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE hire_date > '1985-12-31' AND hire_date < '1987-01-01';

--Question 3

SELECT dept_manager.dept_no, dept_manager.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM dept_manager
JOIN employees
	ON dept_manager.emp_no = employees.emp_no
	
Question 4

SELECT employees.emp_no, employees.last_name, employees.first_name, dept_emp.dept_name
FROM employees
JOIN dept_emp
	ON employees.emp_no = dept_emp.emp_no
	
--Question 5

SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--Question 6

SELECT employees.emp_no, employees.last_name, employees.first_name, dept_emp.dept_name
FROM employees
JOIN dept_emp
	ON employees.emp_no = dept_emp.emp_no
	WHERE dept_name = 'Sales'
	
--Question 7

SELECT employees.emp_no, employees.last_name, employees.first_name, dept_emp.dept_name
FROM employees
JOIN dept_emp
	ON employees.emp_no = dept_emp.emp_no
	WHERE dept_name = 'Sales' OR dept_name = 'Development'

--Question 8

SELECT
	last_name,
	COUNT(*) AS "Last Name Count Total"
FROM employees
GROUP BY last_name
ORDER BY "Last Name Count Total" DESC