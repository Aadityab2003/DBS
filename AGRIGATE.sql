CREATE DATABASE Agrigate;

USE Agrigate;

CREATE TABLE Employee
(
Cust_id INT PRIMARY KEY,
Cust_N VARCHAR(100),
C_purchase int ,
Cust_Add VARCHAR(100)
);


INSERT INTO Employee (Cust_id,Cust_n,C_purchase,Cust_Add)
VALUES
(101,'ADITYA',40000,"Dubai"),
(102,'Prathmesh',45000,"Pakistan"),
(103,'Soham',30000,"Afganistan"),
(104,'isha',10000,"India");


SELECT * FROM Employee;

Update Employee
SET Cust_Add= "India"
WHERE Cust_id= 101;


-- Aggrigate 

SELECT  SUM(C_purchase) FROM Employee;

SELECT AVG(C_purchase) FROM Employee;

SELECT MAX(C_purchase) from Employee;

SELECT MIN(C_purchase) FROM Employee;

SELECT COUNT(C_Purchase) FROM Employee;

SELECT Cust_Add, SUM(C_purchase) FROM Employee 
GROUP BY Cust_Add 
HAVING Cust_Add='India';


SELECT AVG(C_purchase) FROM Employee
GROUP BY Cust_Add
HAVING Cust_ADD <> 'India';

SELECT AVG(C_purchase) from Employee 
WHERE Cust_ADD <> 'India';


SELECT Cust_Add,MAX(C_purchase) from Employee
Where Cust_Add='India';

SELECT Cust_Add, SUM(C_purchase) AS Total_Purchase
FROM Employee
GROUP BY Cust_Add;

SELECT  Cust_ADD, AVG(C_purchase) FROM Employee 
GROUP BY Cust_Add;
