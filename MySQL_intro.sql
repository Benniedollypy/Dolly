
-- created a new database called 'dolly_app'
        create database dolly_app;

        show databases

-- Using mysql database 

        use mysql;

-- created table 'emp_details' with columns having variable declaration 


        create table emp_details (Name varchar (25), age int, sex char(1), 
        doj date, city varchar (15), salary float);

        show tables;

-- PRACTICE ON THE USE OF AGGREGATE FUNCTIONS

       select * from func;

-- decription of table

        describe emp_details;

-- Updated data into the 'emp_details' table

        insert into emp_details
        values("Jimmy", 35, "M", "2005-05-30", "Chicago", 70000),
        ("Shane", 30, "M", "1996-06-25", "Seattle", 55000),
        ("Mary", 28, "F", "2009-03-10", "Boston", 62000),
        ("Dwayne", 37, "M", "2011-07-12", "Austin", 57000),
        ("Sarah", 32, "F", "2017-10-17", "New York", 72000),
        ("Ammy", 35, "F", "2014-12-20", "Seattle", 80000);

-- checking the updated data rows

        Select * from emp_details;

--confirm the data in a distinct column 'city'

        select distinct city from emp_details;

-- exercise on count function

        select count(name) as cunt_name from emp_details; 

-- exercise on sum function

        select sum(salary) as Total_salary from emp_details;

-- exercise on Avg function

        select Avg(salary) as Avg_salary from emp_details;

-- Generating columns of interest from the 'emp_details' table

        Select name, age, salary from emp_details;

-- END of the FUNCTION practice
/* Other functions includes the following
Max func
Min func
*/

/* USING THE "WHERE" clause in sql statements

Works in SELECT, UPDATE, DELETE statements.
Can use logical operators:
= , > , < , >= , <= , <>
AND, OR, NOT
Filters rows before any aggregation (before GROUP BY or SUM() etc.)
*/

        Select name, age from emp_details where age > 30;

        Select * from emp_details where sex = "F";

--using the "WHERE" and the "OR" clause

        Select * from emp_details where city = "Chicago" or city = "Austin";

--using the "WHERE" and the "IN" clause

        Select * from emp_details where city in('Chicago', 'Austin');

--using the "WHERE", "BETWEEN" and the "AND" clause

        Select * from emp_details where
        doj between '2000-01-01' and '2010-12-31';

--using 'logical operators' with "WHERE" and the "AND" clause

        select * from emp_details where
        age > 30 and sex = 'm'


--Brief intro into "GROUP BY" statement
        select sex,  sum(salary) as total_salary from emp_details 
        group by sex

--using the "ORDER" and "DESC" statement

        select * from emp_details order by salary desc

/*Exercises on buil-in sql functions 
like CURDATE(), NOW(), DATEDIFF(), CONCAT()
*/
        select curdate()

        select now()

-- STRING FUNCTION

        select concat('OKE Adedolapo', ' is', ' a', ' software engineer and a data analyst')

-- Replace function

        select replace('orange is a vegetable', 'vegetable', 'fruit') 

-- Detect ASCII code

select ascii('A')
/*CLASSIFICATION OF SQL BUILT-IN FUNCTIONS
Type	                            Examples	                                  Description
Date & Time	             CURDATE(), NOW(), DATE_ADD()	                   Returns or manipulates date/time values
String	                 CONCAT(), UPPER(), LOWER(), SUBSTRING()	       Manipulate or analyze text
Numeric	                 ROUND(), ABS(), CEIL(), FLOOR()	               Perform calculations on numbers
Aggregate	             SUM(), AVG(), COUNT(), MAX(), MIN()	           Summarize multiple rows
*/







  

