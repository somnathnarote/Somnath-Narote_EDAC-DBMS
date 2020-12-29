create database assignment_06;
use assignment_06;
use assignment_05;

delimiter $$
create function fun1(a int(10)) returns int (10)
begin
declare factorial int(10) default 1;
test_loop:repeat
set factorial = factorial * a;
set a = a-1;
until a=1
end repeat;
return factorial;
end $$
select my_fun_1(4);
drop function my_fun_2;

delimiter $$
create function my_fun_2(n int(5)) returns varchar(15)
begin
declare flag  int(2) default 1;
declare i int(2) default 2;
while i<n 
do
	if n % i = 0 then
		set flag = 0;
	end if;
    set i = i+1;
    end while;
if flag =1 then
return "prime number";
else
return "not prime number";
end if;
end $$

select my_fun_2(4);

delimiter $$
create function fun_3(inches int (10)) returns varchar(50)
begin
declare yard int(10);
declare foot int(10);
set yard = inches/36;
set inches =inches % 36;
set foot = inches / 12;
set inches = inches % 12;
return concat(yard, ' yards ',foot, ' foot ',inches, ' inches');
end $$ 
select fun_3(125);

delimiter $$
create function Salary(deptid int3) RETURNS VARCHAR(50)
begin
update emp set salary=(salary+(salary*0.1)) where deptno=deptno;
return 'update';
end $$
-- drop procedure salary;
select * from emp;
select salary(10);

delimiter $$
CREATE FUNCTION USER_ANNUAL_COMP (P_ENO INT4,P_COMP INT4) RETURNS INT8
BEGIN
DECLARE ANNUAL_COM, SALARY INT8;
SET SALARY=(SELECT (SALARY) FROM EMP WHERE EMPNO=P_ENO);
SET ANNUAL_COM = (SALARY + P_COMP)*12;
RETURN ANNUAL_COM;
END$$
SELECT SALARY FROM EMP WHERE EMPNO=1004;
SELECT USER_ANNUAL_COMP(1004,200);

delimiter $$
CREATE PROCEDURE REV(INOUT STR VARCHAR(50))
BEGIN
IF isnull(STR) THEN
	SET STR='STRING IS NULL';
    ELSE IF(STR='') THEN
    SET STR='STRING IS NULL';
ELSE
	SET STR=(SELECT REVERSE(STR));
END IF;
END IF;
END $$
SET @STR=null;
CALL REV(@REV);
SELECT @REV AS REV;

delimiter $$
CREATE PROCEDURE tabledetails()
BEGIN
SHOW TABLES;
END $$

CALL tabledetails;