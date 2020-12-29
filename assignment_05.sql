show databases;
create database assignment_05;
use assignment_05;

create table emp(
emp_no int(4) not null,
ename varchar(30) not null,
job varchar(10),
mgr int (4),
hire_date date, 
sal float(7,2),
dept_no int(2)
);

insert into emp
values(1000,  'Manish' , 'SALESMAN', 1003,  '2020-02-18', 600,  30),
      (1001,  'Manoj' , 'SALESMAN', 1003,  '2018-02-18', 600,  30) ,
      (1002 , 'Ashish', 'SALESMAN',1003 , '2013-02-18',  750,  30 ),
      (1004,  'Rekha', 'ANALYST', 1006 , '2001-02-18', 3000,  10),
      (1005 , 'Sachin', 'ANALYST', 1006 ,  '2019-02-18', 3000, 10 ),
      (1006,  'Pooja',  'MANAGER'  ,     null    , '2000-02-18' ,6000, 10 );
      


create table dept(
d_no int(4) not null,
d_name varchar(10) not null,
area varchar(30)
);     

insert into dept
values(10,'Store','Mumbai'),
      (20,'Purchase','Mumbai'),
      (30,'Store', 'Delhi'),
      (40,'Marketing','Pune'),
      (50,'Finance','Delhi'),
      (60,'Accounts','Mumbai');
      
      
      delimiter $$
      create procedure pp1(in a int, in b int)
      Begin
      select a+b;
      select a-b;
      select a*b;
      select a/b;
      end $$
      
      call pp1(14, 7);
      
delimiter $$
create procedure pp2(inout str varchar(30)) 
begin
set str = (select reverse(str));   
end $$
set @str = 'Database';
call pp2(@str);
select @str as rev;

delimiter $$
create procedure pp3()
begin 
select emp_no, ename, sal from emp order by sal desc limit 5;
end $$  
call pp3;
drop procedure pp3;

delimiter $$
create procedure pp4()
begin
create table emp_test(e_id int, e_name varchar(10), e_joining_date date);
end $$
call pp4;

delimiter $$
create procedure pp5(inout num int, out sqr int, out cube1 int)
begin
declare num1 int;
set num1 = num;
select num,power(num,2), power(num,3) into num, sqr, cube1;
end $$
set @num = 3;
call pp5(@num, @sqr, @cube1);
select @num, @sqr, @cube1;
-- drop procedure pp5;

delimiter $$
create procedure pp6()
begin
insert into dept(d_no, d_name, area)
values(60, 'education', 'pune');
end $$
select * from dept;

delimiter $$
create procedure pp7(out ans int)
begin
declare num int;
set num = 2;
select num into ans;
end $$
drop procedure pp7; 
call pp7(@ans);
select @ans;

delimiter $$
create procedure pp8(in x int, out str varchar(50))
begin
select concat(e.name, 'is from', d.name) into str from emp e inner join dept d on d.no = e.dept_no where e.dept_no = x and e.emp_no = 1004;
end $$
call pp8(10, @str);
select @str;