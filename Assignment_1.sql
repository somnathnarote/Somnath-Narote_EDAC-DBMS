show databases;
create database Assignment_1;
use Assignment_1;
create table member(
member_id int(5),
member_name varchar(30),
member_address varchar(50),
acc_open_date date,
membership_type varchar(20)
);
desc member;
select * from member;


create table Books(
book_no int(6),
book_name varchar(30),
author_name varchar(30),
cost int(7)
);

select * from books;


create table issue(
lib_issue_id int(10),
book_no int(6),
member_id int(5),
issue_date date,
return_date date
);

select * from assignment_1.issue;

select * from assignment_1.member;

alter table member add column penalty_amount int(7);

select * from assignment_1.books;

select * from assignment_1.member;

alter table member drop penalty_amount;

select * from member;

insert into member values(1, "Richa Sharma", "Pune", '2010-12-05', "Lifetime");

select * from member;

insert into member values(2, "Garima Sen", "Pune", current_date(), "Annual");
select * from member;

insert into member
values(3, "Vikas Kandgul", "Solapur", current_date(), "Lifetime"),
      (4, "Piyush Patil", "Jalgaon", current_date(), "Monthly"),
      (5, "Vikas Kandgul", "Pune", '2019-03-07', "Annualy"),
      (6, "Somnath Narote", "Pune", '2019-08-13', "Annualy"),
      (7, "Somnath Narote", "Solapur", current_date(), "Monthly");
      
select * from assignment_1.member;      



alter table Books add column category char(10);
select * from Books;

insert into Books
values(101, "Let Us C", "Denis Ritchie", 450, 'System'),
      (102, "Oracle-complete Reference", "Loni", 550, 'Database'),
      (103, "Mastering SQL", "Loni", 250, 'Database'),
      (104, "PL SQL-Ref", "Scott Urman", 750, 'Database');
      
select * from assignment_1.Books;


update Books
set cost = 300, category = 'RDBMS'
where book_no = 103;

use Assignment_1;

select * from Books;

drop table issue;

show tables;


insert into issue
values(7001, 101, 1, '2010-12-06', '2010-12-07'),
      (7002, 102, 2, '2025-12-06', '2025-12-07'),
      (7003, 104, 1, '2015-01-06', '2015-12-07'),
      (7004, 101, 1, '2004-07-06', '2004-07-07'),
      (7005, 104, 2, '2015-11-06', '2015-11-07'),
      (7006, 101, 3, '2018-02-06', '2018-02-07');
select * from issue;

select * from issue
where return_date = '';

update issue
set return_date = ''
where return_date;

use assignment_1;

alter table issue drop return_date;

alter table issue add return_date date;

select * from issue;


      