department(id,name,employee_id,employee_age,years_in_services)

create table department(
	id serial primary key,
	name varchar(150),
	employee_id int,
	employee_age int,
	years_in_services int
)
select * from department

insert into department values (1,'Finance',1986,55,64)
insert into department values (2,'Engineering',5440,64,15)
insert into department values (3,'Engineering',5909,57,1)

copy department from 'D:\SQL Practice\department_27_july_2024.csv' DELIMITER ',' csv header


--different types of querys

--1.This is Distict query 
select * from department
select employee_age from department
select distinct employee_age from department
select distinct years_in_services from department

--2.This is where query
select * from department
select* from department where employee_age = 78
select* from department where employee_age = 60
select* from department where employee_age = 50
select name,employee_id from department where employee_age = 50 
a.AND operator
select * from department where employee_id = 4124 AND employee_age = 61
b.OR operator
select * from department where employee_id = 4124 OR employee_age = 61
c.Not operator
select * from department where not employee_age = 55
d.Between
select * from department where employee_id>= 5000 AND employee_id<=10000

--3.This is update query
select * from department
update department set employee_id='11111'where id = 2
update department set employee_id='11111'where id = 4

--4.This is delete query
select * from department 
delete from department where employee_id = 4124
rollback

--5.This id Alter query
select * from department
alter table department add column mob_no double precision
update department set mob_no= 31213121 where id=6
alter table department drop column mob_no

--6. This is IN query
select * from department 
select * from department where id in (1,3,5)

--7.This is Constaint query
ALTER TABLE department
ADD CONSTRAINT check_employee_age
CHECK (employee_age <=78);

ALTER TABLE department
ADD CONSTRAINT check_name
CHECK (name NOT IN ('a1','b1','check'));
 











