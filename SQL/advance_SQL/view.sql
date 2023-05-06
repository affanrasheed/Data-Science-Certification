create view EMPSALARY as 
select emp_id, f_name, l_name, b_date,sex,salary
from employees;

select * from empsalary;

create or replace view empsalary as 
select emp_id, f_name, l_name, b_date,sex,job_title,min_salary,max_salary
from employees, jobs 
where employees.job_id = jobs.job_ident; 

select * from empsalary;

drop view empsalary;

select * from empsalary;