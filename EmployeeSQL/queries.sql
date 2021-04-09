--List employee details

SELECT e.emp_no,
  e.last_name,
  e.first_name,
  e.sex,
  s.salary
FROM salaries AS s
INNER JOIN employees AS e ON
e.emp_no=s.emp_no;


--List first name, last name and hire date for employees hired in 1986

SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(year from "hire_date") = 1986


--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name

SELECT d.dept_no, de.dept_name, e.emp_no, e.last_name, e.first_name
FROM dept_manager AS d
INNER JOIN employees as e ON e.emp_no=d.emp_no
INNER JOIN departments as de ON d.dept_no=de.dept_no;


--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, demp.dept_no, de.dept_name
FROM dept_emp AS demp
INNER JOIN employees as e ON e.emp_no=demp.emp_no
INNER JOIN departments as de ON demp.dept_no=de.dept_no;


--List first name, last name, and sex for employees whose first name is "Hercules" 
--and last names begin with "B."

SELECT first_name, last_name, sex
FROM employees
WHERE first_name='Hercules' and last_name LIKE 'B%';


--List all employees in the Sales department, including their 
--employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, de.dept_name
FROM employees as e
INNER JOIN dept_emp AS demp ON e.emp_no=demp.emp_no
INNER JOIN departments as de ON demp.dept_no=de.dept_no WHERE de.dept_name='Sales';


--List all employees in the Sales and Development departments, including their employee number, 
--last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, de.dept_name
FROM employees as e
INNER JOIN dept_emp AS demp ON e.emp_no=demp.emp_no
INNER JOIN departments as de ON demp.dept_no=de.dept_no WHERE de.dept_name='Sales' 
or de.dept_name='Development';

--8. In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.

SELECT last_name, count(last_name) as name_count
FROM employees
GROUP BY last_name
ORDER BY name_count desc;

