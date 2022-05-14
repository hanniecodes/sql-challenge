-- CREATE TABLE departments(
-- 	dept_no VARCHAR PRIMARY KEY, 
-- 	dept_name VARCHAR NOT NULL);
SELECT *
from departments

-- CREATE TABLE titles(
-- 	title_id VARCHAR PRIMARY KEY, 
-- 	title VARCHAR NOT NULL)
SELECT *
from titles	

-- Noticed that employe title is  is linked to title id! So cool! 
-- Using foreign key to keep them linked 
-- CREATE TABLE employees(
-- 	emp_no INT PRIMARY KEY, 
-- 	emp_title VARCHAR NOT NULL,
-- 	birth_date VARCHAR NOT NULL, 
-- 	first_name VARCHAR NOT NULL, 
-- 	last_name VARCHAR NOT NULL, 
-- 	sex VARCHAR NOT NULL, 
-- 	hire_date VARCHAR NOT NULL, 
-- 	FOREIGN KEY (emp_title) REFERENCES titles(title_id)
-- );

SELECT *
from employees

-- --Whole table is linked to other tables so both are primary keys 
-- CREATE TABLE dept_managers(
-- 	dept_no VARCHAR NOT NULL, 
-- 	emp_no INT NOT NULL,
-- 	Primary Key (dept_no,emp_no),
-- 	FOREIGN KEY (dept_no) REFERENCES departments(dept_no), 
-- 	FOREIGN KEY (emp_no) REFERENCES employees(emp_no) 
-- );

SELECT *
from dept_managers
-- -- Made table wrong had to drop it 
-- DROP TABLE dept_emp;

--Whole table is linked to other tables so both are primary keys 
-- CREATE TABLE dept_emp(
-- 	emp_no INT NOT NULL,	
-- 	dept_no VARCHAR NOT NULL, 
-- 	Primary Key (dept_no,emp_no),
-- 	FOREIGN KEY (dept_no) REFERENCES departments(dept_no), 
-- 	FOREIGN KEY (emp_no) REFERENCES employees(emp_no) 
-- );
Select * 
from dept_emp
-- CREATE TABLE salaries(
-- 	emp_no INT NOT NULL PRIMARY KEY,	
-- 	salary INT NOT NULL, 
-- 	FOREIGN KEY (emp_no) REFERENCES employees(emp_no) 
-- );

Select * 
from salaries

-- Once you have a complete database, perform these steps:
-- List the following details of each employee: employee number, last name, first name, sex, and salary.
CREATE VIEW employee_list AS
SELECT employees.emp_no, employees.first_name, employees.last_name, employees.sex,salaries.salary
from employees
INNER Join employees on 
emp_no.employees=emp_no.salaries
	
-- List first name, last name, and hire date for employees who were hired in 1986.

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

-- List the department of each employee with the following information: employee number, last name, first name, and department name.

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

-- List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.