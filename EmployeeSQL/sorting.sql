Select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
From employees
Left Join salaries ON employees.emp_no = salaries.emp_no;

Select first_name, last_name, hire_date
From employees
Where hire_date Between '1986-01-01' AND '1986-12-31';

Select dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
From dept_manager
Left Join departments ON dept_manager.dept_no = departments.dept_no
Left Join employees ON dept_manager.emp_no = employees.emp_no;

Select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
From employees
Left Join dept_emp ON employees.emp_no = dept_emp.emp_no
Left Join departments ON dept_emp.dept_no = departments.dept_no;

Select first_name, last_name, birth_date, sex
From employees
Where first_name = 'Hercules' AND last_name Like 'B%';

Select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
From employees
Left Join dept_emp ON employees.emp_no = dept_emp.emp_no
Left Join departments ON dept_emp.dept_no = departments.dept_no
Where departments.dept_name = 'Sales';

Select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
From employees
Left Join dept_emp ON employees.emp_no = dept_emp.emp_no
Left Join departments ON dept_emp.dept_no = departments.dept_no
Where departments.dept_name IN ('Sales', 'Development');

Select last_name, Count(last_name)
From employees
Group By last_name
Order By Count(last_name) Desc;