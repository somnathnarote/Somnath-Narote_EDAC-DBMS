show databases;
create database assignment_03;
use assignment_03;

create table department(
dept_id int(5) not null primary key,
dept_name varchar(30)
);

insert into department
values(1, 'Finance'),
      (2, 'Training'),
      (3, 'Marketing');
      
desc department;
select * from department;

create table employee(
emp_id int(5),
emp_name varchar(50),
dept_id int(3),
salary int(5),
manager int(5)
);

insert into employee
values(1, 'Arun', 1, 8000, 4), 
      (2, 'Kiran', 1, 7000, 1),
      (3, 'Scott',1, 3000, 1);
insert into employee(emp_id, emp_name, dept_id, salary) 
values(4, 'Max', 2, 9000);
insert into employee
values(5, 'Jack', 2, 8000, 4);
insert into employee(emp_id, emp_name, salary, manager)
values(6, 'King', 6000, 4);

select * from employee;
desc employee;

select salary from employee order by salary;
select salary from employee order by salary desc;

select *,sum(salary),dept_id from employee group by dept_id;
select dept_id,sum(salary) from employee where salary >= 17000 group by dept_id;


alter table employee add foreign key (dept_id)
references department (dept_id); 

select dept_id,sum(salary) from employee group by dept_id having sum(salary) > 18000;  
select dept_id,sum(salary) from employee group by dept_id having sum(salary) < 20000;  