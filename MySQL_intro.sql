use mysql;
show tables;
select * from func;
create database dolly_app;
show databases

create table emp_details (Name varchar (25), age int, sex char(1), 
doj date, city varchar (15), salary float);

describe emp_details;

insert into emp_details
values("Jimmy", 35, "M", "2005-05-30", "Chicago", 70000),
("Shane", 30, "M", "1996-06-25", "Seattle", 55000),
("Mary", 28, "F", "2009-03-10", "Boston", 62000),
("Dwayne", 37, "M", "2011-07-12", "Austin", 57000),
("Sarah", 32, "F", "2017-10-17", "New York", 72000),
("Ammy", 35, "F", "2014-12-20", "Seattle", 80000);

Select * from emp_details;

select distinct city from emp_details;

select count(name) as cunt_name from emp_details; 

select sum(salary) as Total_salary from emp_details;

select Avg(salary) as Avg_salary from emp_details;

Select name, age, salary from emp_details;

Select * from emp_details where age > 30;

Select * from emp_details where sex = "F";

Select * from emp_details where city = "Chicago" or city = "Austin";

Select * from emp_details where city in('Chicago', 'Austin');

Select * from emp_details where
doj between '2000-01-01' and '2010-12-31';

select * from emp_details where
age > 30 and sex = 'm'

select sex,  sum(salary) as total_salary from emp_details 
group by sex

select * from emp_details order by salary desc

select curdate()

select now()

#String functon

select concat('OKE Adedolapo', ' is', ' a', ' software engineer and a data analyst')

#Replace function

select replace('orange is a vegetable', 'vegetable', 'fruit') 

select ascii('A')







  

