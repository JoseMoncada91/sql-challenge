---- **SQL-CHALLENGE JOSE MONCADA 11/19/2024** ----
--Data Analysis--

--List the employee number, last name, first name, sex, and salary of each employee (2 Points)
SELECT 
    e.emp_no,
    e.last_name,
    e.first_name,
    e.sex,
    s.salary
FROM 
    employees e
JOIN 
    salaries s
ON 
    e.emp_no = s.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)
SELECT 
    first_name,
    last_name,
    hire_date
FROM 
    employees
WHERE 
    EXTRACT(YEAR FROM hire_date) = 1986;
	
--List the manager of each department along with their department number, department name, employee number, last name, and first name (2 points)
SELECT 
    dm.dept_no, 
    d.dept_name, 
    dm.emp_no, 
    e.last_name, 
    e.first_name
FROM 
    department_managers dm
JOIN 
    employees e ON dm.emp_no = e.emp_no
JOIN 
    departments d ON dm.dept_no = d.dept_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name (2 points)
SELECT 
    ed.dept_no, 
    e.emp_no, 
    e.last_name, 
    e.first_name, 
    d.dept_name
FROM 
    employee_departments ed
JOIN 
    employees e ON ed.emp_no = e.emp_no
JOIN 
    departments d ON ed.dept_no = d.dept_no;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B (2 points)
SELECT 
    first_name, 
    last_name, 
    sex
FROM 
    employees
WHERE 
    first_name = 'Hercules' 
    AND last_name LIKE 'B%';
	
--List each employee in the Sales department, including their employee number, last name, and first name (2 points)
SELECT 
    e.emp_no, 
    e.last_name, 
    e.first_name
FROM 
    employees e
JOIN 
    employee_departments ed ON e.emp_no = ed.emp_no
JOIN 
    departments d ON ed.dept_no = d.dept_no
WHERE 
    d.dept_name = 'Sales';
	
--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name (4 points)
SELECT 
    e.emp_no, 
    e.last_name, 
    e.first_name,
    d.dept_name
FROM 
    employees e
JOIN 
    employee_departments ed ON e.emp_no = ed.emp_no
JOIN 
    departments d ON ed.dept_no = d.dept_no
WHERE 
    d.dept_name IN ('Sales', 'Development');
	
--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) (4 points)
SELECT 
    e.last_name, 
    COUNT(e.last_name) AS last_name_count
FROM 
    employees e
GROUP BY 
    e.last_name
ORDER BY 
    last_name_count DESC;
