/*
--------------------------SQL Challenge-------------------------
Type: Employee Queries
Prepared By: Bhargav Andipara
*/
----------------------------
select * from departments;
select * from dept_emp;
select Distinct emp_no from dept_emp order by emp_no;
select * from dept_manager;
select Distinct emp_no from dept_manager order by emp_no;
select * from employees;
select * from salaries;
select * from titles;
------------------------------
--1. List the following details of each employee: employee number, last name, first name, gender, and salary.
select 
	a.emp_no, 
	a.first_name,
	a.last_name,
	a.gender,
	b.salary
from employees a
inner join salaries b on a.emp_no=b.emp_no;
------------------------------------------
--2. List employees who were hired in 1986.
select * from employees
where hire_date between '1986-01-01' and '1986-12-31'
order by hire_date desc;
-------------------------------------------
/*3. List the manager of each department with the following information: 
department number, department name, the manager's employee number, last name, first name, 
and start and end employment dates.*/


select 
	a.dept_no,
	b.dept_name,
	a.emp_no,
	c.first_name,
	c.last_name,
	d.from_date as employment_start_date,
	d.to_date as employment_end_date	
from dept_manager a
left join departments b on a.dept_no=b.dept_no
left join employees c on a.emp_no=c.emp_no
left join dept_emp d on a.emp_no=d.emp_no;
--------------------------------------------
/*4. List the department of each employee with the following information: 
employee number, last name, first name, and department name. */
select * from employees;
select 
	a.emp_no,
	a.first_name,
	a.last_name,
	c.dept_name
from employees a 
left join dept_emp b on a.emp_no=b.emp_no
left join departments c on b.dept_no=c.dept_no
where b.to_date>=NOW();
SELECT NOW()
ALTER TABLE dept_emp ALTER COLUMN to_date TYPE DATE 
using to_date(to_date, 'YYYY-MM-DD');


--------------------------------------------------
--5. List all employees whose first name is "Hercules" and last names begin with "B."

select * from employees
where first_name = 'Hercules' and last_name like 'B%'

------------------------------------------------------
--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

select Distinct
	a.dept_name,
	b.emp_no,
	c.last_name,
	c.first_name
from departments a
right outer join dept_emp b on a.dept_no=b.dept_no
right outer join employees c on b.emp_no=c.emp_no
where dept_name='Sales';

----------------------------------------------------
/* 7. List all employees in the Sales and Development departments, including their 
employee number, last name, first name, and department name.*/


-----------------------------------------------------
--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

select last_name, count(last_name)
from employees
group by last_name
order by last_name desc


