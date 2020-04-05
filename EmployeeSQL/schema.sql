DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

-- Create new departments table
CREATE TABLE departments (
  dept_no VARCHAR(5) PRIMARY KEY,
  dept_name VARCHAR
);

-- Create new employees table
CREATE TABLE employees (
  emp_no INT PRIMARY KEY,
  birth_date DATE NOT NULL,
  first_name VARCHAR,
  last_name VARCHAR,
  gender VARCHAR(2),
  hire_date DATE NOT NULL
);

-- Create new dept_emp table
CREATE TABLE dept_emp (
  emp_no INT,
  dept_no VARCHAR(5),
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  PRIMARY KEY (emp_no,dept_no),
  FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

-- Create new dept_manager table
CREATE TABLE dept_manager (
  dept_no VARCHAR(5),
  emp_no INT,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  PRIMARY KEY (emp_no, dept_no),
  FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

-- Create new salaries table
CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

-- Create new titles table
CREATE TABLE titles (
  emp_no INT NOT NULL,
  title VARCHAR,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

ALTER TABLE dept_emp
ADD CONSTRAINT fk_dept_emp_empno FOREIGN KEY (emp_no) REFERENCES employees (emp_no);

ALTER TABLE dept_manager
ADD CONSTRAINT fk_dept_manager_empno FOREIGN KEY (emp_no) REFERENCES employees (emp_no);

SELECT * FROM departments;

SELECT * FROM employees;

SELECT * FROM dept_emp;

SELECT * FROM dept_manager;

SELECT * FROM salaries;

SELECT * FROM titles;