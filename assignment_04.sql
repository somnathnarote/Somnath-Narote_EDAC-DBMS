show databases;
create database assignment_04;
use assignment_04;
use assignment_03;

select dept_name,emp_name from Employee join department on department.dept_id = employee.dept_id;
select * from employee join department on employee.dept_id = department.dept_id;
select employee.dept_id,sum(salary) from employee join department on employee.dept_id group by dept_id;
select dept_name,emp_name from employee right outer join department on employee.dept_id = department.dept_id;
select dept_name, emp_name from employee left outer join department on employee.dept_id = department.dept_id;
select emp_name, dept_name as department from employee join department on employee.dept_id = department.dept_id;

create table emp1(
emp_id int (10) primary key,
emp_name varchar (20)
);
insert into emp1 values
(1,'A'),
(2,'B'),
(3,'C');
desc emp1;
select * from emp1;

create table emp2 as select * from emp1;
insert into emp2 
values(4, 'D'),
      (5, 'E');
      
select * from emp2;  
select * from emp1 union select * from emp2;
select * from emp1 union all select * from emp2;

 select emp_name from employee where salary = (select salary from employee where emp_name = 'Arun') and emp_name not like 'Arun';
 select emp_name from employee where dept_id = (select dept_id from employee where emp_name = 'Arun');
 select emp_name from employee where salary = (select salary from employee order by salary limit 1);
 update employee set salary = 15000 where dept_id = (select dept_id from(select dept_id from employee where emp_name = 'Max')as a) and emp_name != 'Max'; 
 
      