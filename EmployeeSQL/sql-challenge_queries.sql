--1 •List the employee number, last name, first name, sex, and salary of each employee
select E.emp_no, last_name, first_name, sex, salary 
from employees E Left Join salaries S on E.emp_no = S.emp_no

--2 •List the first name, last name, and hire date for the employees who were hired in 1986  
select  first_name,last_name,hire_date
from employees
where Extract(YEAR from hire_date) = 1986

--3 •List the manager of each department along with their department number, department name, employee number, last name, and first name 
select DM.dept_no, D.dept_name, DM.emp_no, E.last_name, E.first_name
from dept_manager DM 
Left Join departments D on DM.dept_no = D.dept_no
Left Join employees E on DM.emp_no = E.emp_no

--4 •List the department number for each employee along with that employee’s employee number, last name, first name, and department name 
select DE.dept_no, DE.emp_no, E.last_name, E.first_name , D.dept_name
from "dept-emp" DE 
Left Join departments D on DE.dept_no = D.dept_no
Left Join employees E on DE.emp_no = E.emp_no

--5 •List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B 
select first_name,last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%'

--6 •List each employee in the Sales department, including their employee number, last name, and first name 
select D.dept_name, DE.emp_no, E.last_name, E.first_name
from "dept-emp" DE 
Left Join departments D on DE.dept_no = D.dept_no 
Left Join employees E on DE.emp_no = E.emp_no
where D.dept_name = 'Sales'

--7 •List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name 
select DE.emp_no, E.last_name, E.first_name, D.dept_name
from "dept-emp" DE 
Left Join departments D on DE.dept_no = D.dept_no 
Left Join employees E on DE.emp_no = E.emp_no
where D.dept_name in ('Sales','Development')

--8 •List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) 
select last_name, count(last_name)
from employees
group by last_name
order by count(last_name) desc

--------------------------------------------------------------------------------------------------------------------------

