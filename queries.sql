-- 1. List employee number, last name, first name, sex, and salary
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM Employees e
JOIN Salaries s ON e.emp_no = s.emp_no;

SELECT *
FROM titles

-- 2. List employees hired in 1986
SELECT first_name, last_name, hire_date
FROM Employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

-- 3. List department managers
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM Dept_Manager dm
JOIN Departments d ON dm.dept_no = d.dept_no
JOIN Employees e ON dm.emp_no = e.emp_no;

-- 4. List department of each employee
SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM Dept_Emp de
JOIN Employees e ON de.emp_no = e.emp_no
JOIN Departments d ON de.dept_no = d.dept_no;

-- 5. List employees named Hercules B.
SELECT first_name, last_name, sex
FROM Employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- 6. List employees in the Sales department
SELECT e.emp_no, e.last_name, e.first_name
FROM Employees e
JOIN Dept_Emp de ON e.emp_no = de.emp_no
JOIN Departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

-- 7. List employees in Sales and Development departments
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM Employees e
JOIN Dept_Emp de ON e.emp_no = de.emp_no
JOIN Departments d ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development');

-- 8. List frequency of employee last names
SELECT last_name, COUNT(*) as frequency
FROM Employees
GROUP BY last_name
ORDER BY frequency DESC;

SELECT * FROM employees LIMIT 5;
SELECT * FROM departments LIMIT 5;
-- Repeat for other tables