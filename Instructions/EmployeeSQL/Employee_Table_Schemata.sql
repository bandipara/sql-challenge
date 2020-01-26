/*-------------------Employee SQL Challenge------------------
---------------------Table Schemata-------------------------*/


Create Table departments(
	id serial primary key,
	dept_no varchar(20) not null,
	dept_name varchar(255) not null);
	
select * from Departments;
-------------------------------------------

Create Table dept_emp(
	id serial primary key,
	emp_no int not null,
	dept_no varchar(20) not null,
	from_date DATE not null,
	to_date DATE not null
);

select * from dept_emp;
--------------------------------------------

Create Table dept_manager(
	id serial primary key,
	dept_no varchar(20) not null,
	emp_no int not null,
	from_date DATE not null,
	to_date DATE not null
);

select * from dept_manager;
-------------------------------------------------
Create Table employees(
	id serial primary key,
	emp_no int not null,
	birth_date varchar(20) not null,
	first_name varchar(20) not null,
	last_name varchar(20) not null,
	gender varchar(5) not null,
	hire_date DATE	
);
select * from employees;

-----------------------------------------------



Create Table salaries(
	id serial primary key,
	emp_no int not null,
	salary varchar(20) not null,
	from_date DATE not null,
	to_date DATE not null
);

select * from salaries;

------------------------------------------
Create Table titles(
	id serial primary key,
	emp_no int not null,
	title varchar(50) not null,
	from_date DATE not null,
	to_date DATE not null
);

select * from titles;