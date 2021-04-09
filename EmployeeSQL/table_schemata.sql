-- Delete table "employees"
DROP TABLE employees;

-- Re-create the table "employees"
CREATE TABLE employees (
  emp_no INT,	
  emp_title_id VARCHAR(30) NOT NULL,
  birth_date DATE,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  sex VARCHAR(30) NOT NULL,
  hire_date DATE,
  PRIMARY KEY(emp_no, hire_date)
);

SELECT * from employees;

-- Delete table "departments"

DROP TABLE departments;

-- Re-create table "employees"

CREATE TABLE departments (
  dept_no VARCHAR(30) NOT null,
  dept_name VARCHAR(40) NOT null,
  PRIMARY KEY(dept_no, dept_name)
);

SELECT * from departments;


-- Delete table "dept_manager"

DROP TABLE dept_manager;

-- Re-create table "dept_manager"

CREATE TABLE dept_manager (
  dept_no VARCHAR(30) NOT null,
  emp_no INT,
  PRIMARY KEY(dept_no, emp_no)
);

SELECT * from dept_manager;

-- Delete table "dept_emp"

DROP TABLE dept_emp;


-- Re-create table "dept_emp"

CREATE TABLE dept_emp (
  emp_no INT,
  dept_no VARCHAR(30) NOT null,
  PRIMARY KEY(emp_no, dept_no)
);
	
SELECT * from dept_emp;
	
	
-- Delete table "titles"

DROP TABLE titles;


-- Re-create table "titles"

CREATE TABLE titles (
  title_id VARCHAR(30) NOT null,
  title VARCHAR(50) NOT null,
  PRIMARY KEY(title_id, title)
);

SELECT * from titles;


-- Delete table "salaries"

DROP TABLE salaries;


-- Re-create table "salaries"

CREATE TABLE salaries (
  emp_no INT,
  salary INT,
  PRIMARY KEY(emp_no, salary)
);


SELECT * from salaries;