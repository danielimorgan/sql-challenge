--Answers to the following assignment.

--1. Salary Information
SELECT e.emp_no,
	e.last_name,
	e.first_name,
	e.sex,
	s.salary
FROM employees as e
INNER JOIN salaries as s ON
e.emp_no = s.emp_no;

--2. Employees Hired in 1986
SELECT e.first_name,
	e.last_name,
	e.hire_date
FROM employees as e
WHERE e.hire_date >= '19860101'
AND e.hire_date <= '19861231';

--3. Department Managers
SELECT dm.dept_no,
	d.dept_name,
	dm.emp_no,
	e.last_name,
	e.first_name
FROM dept_manager as dm
INNER JOIN departments as d ON
dm.dept_no = d.dept_no
INNER JOIN employees as e ON
dm.emp_no = e.emp_no;

--4.Department Classification
SELECT de.dept_no,
	de.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM dept_emp as de
INNER JOIN departments as d ON
de.dept_no = d.dept_no
INNER JOIN employees as e ON
de.emp_no = e.emp_no;

--5. Hercules B. Filter
SELECT e.last_name,
	e.first_name,
	e.sex
FROM employees as e
WHERE e.first_name = 'Hercules'
AND e.last_name LIKE '%B%';

--6. Sales Department Employees
SELECT e.emp_no,
	e.last_name,
	e.first_name
FROM employees as e
INNER JOIN dept_emp as de ON
e.emp_no = de.emp_no
WHERE de.dept_no = 'd007';

--7. Sales and Development Department Employees
SELECT e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM employees as e
INNER JOIN dept_emp as de ON
e.emp_no = de.emp_no
INNER JOIN departments as d ON
de.dept_no = d.dept_no
WHERE de.dept_no = 'd007'
OR de.dept_no = 'd005';

--8. Last Name Frequency Counts 

SELECT last_name, COUNT(emp_no) as "num_of_people"
FROM employees as e
GROUP BY last_name
ORDER BY num_of_people DESC;

