--Step 1 Create a catalogu
CREATE CATALOG IF NOT EXISTS exercise1;

--Step 2 create a schema
CREATE SCHEMA IF NOT EXISTS exercise1.fundamentals;

--Step 3 create a table
CREATE TABLE IF NOT EXISTS exercise1.fundamentals.employees (id INT,firstname STRING,lastname STRING,department STRING,Salary INT,hire_date INT,city STRING);

--Step 4 insert into the table 
INSERT INTO exercise1.fundamentals.employees 
VALUES (1,'Alice','Green','IT',70000,2020-01-10,'Johannesburg'),
(2,'Brian','Lee','HR',45000,2019-03-22,'Capetown'),
(3,'Cathy','Zulu','Finance',65000,2018-07-18,'Durban'),
(4,'David','Mokoena','marketing',50000,2021-11-05,'Pretoria'),
(5,'Eva','Naidoo','IT',72000,2017-09-30,'Johannesburg');

SELECT*
FROM exercise1.fundamentals.employees;

--QUESTION 1 Retrieve all columns from the employees table.
SELECT*
FROM exercise1.fundamentals.employees;

--QUESTION 2 Find all unique departments
SELECT DISTINCT department
FROM exercise1.fundamentals.employees;

--Question 3 Retrieve first and last names ordered by salary descending
SELECT firstname,lastname
FROM exercise1.fundamentals.employees
ORDER BY Salary DESC;

--QUESTION 4 Retrieve the top 3 highest-paid employees
SELECT  id,firstname,lastname,Salary
FROM exercise1.fundamentals.employees
ORDER BY Salary DESC
LIMIT 3;

--QUESTION 5 Find employees in the IT department
SELECT id,firstname,lastname,department
FROM exercise1.fundamentals.employees
WHERE department ='IT';

--QUESTION 6 Find employees in Finance with salary > 60000
SELECT id,firstname,lastname,department,Salary
FROM exercise1.fundamentals.employees
WHERE department ='Finance' AND Salary > 60000;

--QUESTION 7 Find employees in HR or Marketing
SELECT id,
       firstname,
       lastname,
       department
FROM exercise1.fundamentals.employees
WHERE department IN ('HR', 'Marketing');


--QUESTION 8 Find employees not in IT.
SELECT DISTINCT id,firstname,lastname,department
FROM exercise1.fundamentals.employees
WHERE department != 'IT';

--QUESTION 9 Find employees in IT, HR, or Finance using IN.
SELECT DISTINCT id,firstname,lastname,department
FROM exercise1.fundamentals.employees
WHERE department IN ('IT','HR','Finance');

--QUESTION 10 Find employees in IT with salary > 65000 and city Johannesburg

SELECT id,
       firstname,
       lastname,
       department,
       Salary,
       city
FROM exercise1.fundamentals.employees
WHERE department ='IT' AND Salary > 65000;
