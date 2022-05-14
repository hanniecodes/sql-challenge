
-- Once you have a complete database, perform these steps:
-- List the following details of each employee: employee number, last name, first name, sex, and salary.
-- CREATE VIEW employee_list AS
SELECT e.emp_no, e.last_name, e.first_name, e.sex, salaries.salary
FROM employees AS e
INNER Join salaries
ON e.emp_no = salaries.emp_no;
	
-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date like '%1986'

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT dept_manager.dept_no,departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
from dept_manager
INNER JOIN departments ON
departments.dept_no=dept_manager.dept_no
INNER JOIN employees ON
employees.emp_no=dept_manager.emp_no

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT dept_emp.emp_no, e.last_name, e.first_name, departments.dept_name
FROM dept_emp
INNER Join employees e ON 
e.emp_no = dept_emp.emp_no
INNER JOIN departments ON
departments.dept_no=dept_emp.dept_no

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name='Hercules'
AND last_name like 'B%'

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name,d.dept_name
FROM employees e
JOIN dept_emp ON
e.emp_no=dept_emp.emp_no
INNER JOIN departments d ON
d.dept_no=dept_emp.dept_no
WHERE dept_name='Sales'


-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name,d.dept_name
FROM employees e
JOIN dept_emp ON
e.emp_no=dept_emp.emp_no
INNER JOIN departments d ON
d.dept_no=dept_emp.dept_no
WHERE dept_name='Sales' OR dept_name='Development'

-- List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.
SELECT last_name,
COUNT(last_name)
FROM employees
GROUP BY last_name 
ORDER BY COUNT(last_name)desc;