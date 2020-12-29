show databases;
create database assignment_02;

use assignment_02;
create table publishers(
pub_id int(3),
pname varchar(30),
email varchar(50),
phone varchar(30)
);
select * from publishers;

create table subjects(
sub_id varchar(5),
sname varchar(30)
);
select * from subjects;


create table authors(
aut_id int(5),
aut_name varchar(30),
email varchar(50),
phone varchar(30)
);
select * from authors;

create table titles(
title_id int(5),
title varchar(30),
pubdate date
);
select * from titles;

create table titleauthors(
aut_id int(5),
title_id int(5),
inportance int(2)
);

select * from titleauthors;

insert into publishers 
values(1,'WILLEY','WDT@VSNL.NET','91-11-23260877'),
      (2,'WROX','INFO@WROX.COM',NULL),
      (3,'TATA MCGRAW-HILL','FEEDBACK@TATAMCGRAWHILL.COM','91-11-33333322'),
      (4,'TECHMEDIA','BOOKS@TECHMEDIA.COM','91-11-33257660');
      
      insert into subjects
      values('ORA','ORACLE DATABASE 10g'),
            ('JAVA','JAVA LANGUAGE'),
            ('JEE','JAVA ENTEPRISE EDITION'),
            ('VB','VISUAL BASIC.NET'),
            ('ASP','ASP.NET');
            
insert into authors
values(101, 'HERBERT SCHILD','HERBERT@YAHOO.COM',NULL),
      (102, 'JAMES GOODWILL','GOODWILL@HOTMAIL.COM',NULL),
      (103, 'DAVAID HUNTER','HUNTER@HOTMAIL.COM',NULL),
      (104, 'STEPHEN WALTHER','WALTHER@GMAIL.COM',NULL),
      (105, 'KEVIN LONEY','LONEY@ORACLE.COM',NULL),
      (106, 'ED. ROMANS','ROMANS@THESERVERSIDE.COM',NULL);
      

alter table titles add column price int(5);
      
insert into titles
values(1001,'ASP.NET UNLEASHED','2012-04-02',540),  
      (1002,'ORACLE10G COMP. REF.','1-05-05',575),
      (1003,'MASTERING EJB','2003-02-05',475),
      (1004,'JAVA COMP. REF','2003-04-05',499),
      (1005,'PRO. VB.NET','2015-01-05',450);
      
      
insert into titleauthors
values(1001,104,1), 
      (1002,105,1),
      (1003,106,1),
      (1004,101,1),
      (1005,103,1),
      (1005,102,2);
      
      
      select * from subjects where sname LIKE 'o%'; 
      select * from subjects where sname LIKE 'J%';
      select * from subjects where sname LIKE '%.net%';
      
      select * from authors where aut_name LIKE '%er';
      select * from publishers where pname LIKE '%HILL%';
      
      
      SELECT * FROM TITLES WHERE PRICE <500;
      SELECT * FROM TITLES WHERE PUBDATE > '2003-04-05';
      
      SELECT * FROM subjects WHERE sub_id = 'JAVA' OR sub_id = 'JEE';
      
select * from authors where aut_id > 103;

      
select * from titles where title_id = 101 or price > 400;

select * from publishers where pname in('techmedia','wrox'); 


select MAX(price) from titles;
select avg(inportance) from titleauthors;
select count(aut_id) from authors;
select sum(price) from titles;


select count(*) from titles where month(pubdate) = '04';
select year('2020-12-12');
select month('2020-12-12');   
select last_day(now());

create table employee(
emp_id int(5),
emp_name varchar(50)
);

select * from employee;

insert into employee
values(001,'Vikas',null),
      (002,'Joey',null),
      (003,'Chandler',null),
      (004,'Somnath',null),
      (005,'Ross',null);
      
      alter table employee add column dept_id int(3);
      
      update employee
      set emp_name = 'Scott'
      where emp_name = 'Ross';
      
      truncate table employee;
      
alter table employee add column sal float(7,3); 

update employee
set sal = 1234.567
where sal is null;     
/*
update employee
set sal = 1234.567
where emp_id = 2;   */   

select round(6.5);
select ceil(32.1);
select floor(6.7);
select sign(-15);
select mod(14,2);
select sqrt(7);
select power(10,2);


select year(curdate()) as year;
select month(curdate()) as month;
select date(curdate()) as date;