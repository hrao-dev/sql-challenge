SELECT * FROM departments;

SELECT * FROM employees;

SELECT * FROM dept_emp;

SELECT * FROM dept_manager;

SELECT * FROM salaries;

SELECT * FROM titles;

-- List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT employees.emp_no, employees.last_name, employees.first_name, 
       employees.gender,salaries.salary 
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no;

-- List employees who were hired in 1986.
SELECT last_name, first_name, hire_date
FROM employees
WHERE (hire_date >= '1986-01-01') AND 
      (hire_date <= '1986-12-31');

-- List the manager of each department with the following information: department number, department name, 
-- the manager's employee number, last name, first name, and start and end employment dates.
SELECT departments.dept_no,departments.dept_name,
       employees.emp_no, employees.last_name,employees.first_name, 
       dept_manager.from_date, dept_manager.to_date 
FROM departments 
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees  ON dept_manager.emp_no = employees.emp_no;


-- List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name,employees.first_name, 
       departments.dept_name 
FROM employees 
RIGHT JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
RIGHT JOIN departments  ON dept_emp.dept_no = departments.dept_no;

-- List all employees whose first name is "Hercules" and last names begin with "B."
SELECT * FROM employees 
WHERE first_name = 'Hercules' AND
      last_name LIKE 'B%';
	 
-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name,employees.first_name, 
       departments.dept_name 
FROM employees 
RIGHT JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
RIGHT JOIN departments  ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';
  
-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name,employees.first_name, 
       departments.dept_name 
FROM employees 
RIGHT JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
RIGHT JOIN departments  ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales' OR 
	  departments.dept_name = 'Development'
ORDER BY departments.dept_name;

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT employees.last_name, count(employees.last_name) as frequency 
FROM employees  
GROUP BY employees.last_name
ORDER BY frequency DESC;

-- List the most common salary ranges for employees
SELECT *
FROM salaries
GROUP BY salaries.emp_no;

-- List average salary by title
SELECT titles.title,
ROUND(AVG(salaries.salary),2) AS avg_salary
FROM titles
JOIN salaries ON titles.emp_no = salaries.emp_no
GROUP BY titles.title;
