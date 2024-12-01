--  Study and Implementation of DDL COMMANDS

CREATE DATABASE Ddl;

use Ddl ;

CREATE TABLE Employee
(
 Emp_id INT PRIMARY KEY,
 Emp_Name Varchar(60),
 Emp_Age int);
 
 SELECT * FROM Employee;
 
 
 ALTER TABLE Employee
 DROP Emp_Age;
 
 ALTER TABLE Employee
 ADD Emp_Age INT;
 
 ALTER TABLE Employee
 MODIFY Emp_Age INT;
 
 ALTER TABLE Employee
 RENAME COLUMN Emp_id TO Emp_Username;
 
 ALTER TABLE Employee 
 Drop COLUMN Emp_Age;
 
 
 TRUNCATE TABLE Employee;
 
 
 DROP TABLE Employee;
 