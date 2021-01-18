

select employees.emp_no, last_name, first_name, sex, salary
from employees
join salaries
on employees.emp_no = salaries.emp_no;

select * from employees;

alter TABLE employees 
alter column hire_date Type DATE
using to_date(hire_date, 'MM-DD-YYYY');


select first_name, last_name, hire_date
from employees where extract(year from hire_date) = 1986; 

select d.dept_no, dept_name, dm.emp_no, last_name, first_name
from departments as d
join dept_manager as dm
on d.dept_no = dm.dept_no
join employees as e
on dm.emp_no = e.emp_no;

select e.emp_no, last_name, first_name, dept_name
from employees as e
join dept_emp as de
on e.emp_no = de.emp_no
join departments as d
on de.dept_no = d.dept_no;

select first_name, last_name, sex
from employees
where first_name = 'Hercules' and left(last_name,1) = 'B'; 

select e.emp_no, last_name, first_name, dept_name
from departments as d
join dept_emp as de
on d.dept_no = de.dept_no
join employees as e
on de.emp_no = e.emp_no
where dept_name = 'Sales';

select e.emp_no, last_name, first_name, dept_name
from departments as d
join dept_emp as de
on d.dept_no = de.dept_no
join employees as e
on de.emp_no = e.emp_no
where dept_name = 'Sales' or dept_name = 'Development';

select last_name, count(last_name) as "last_name_count"
from employees
group by last_name
order by "last_name_count" desc;