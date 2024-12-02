CREATE DATABASE Sub_Q;

USE Sub_Q;


CREATE TABLE Employee
(
E_id INT PRIMARY KEY,
E_name VARCHAR(70),
E_Add VARCHAR(60),
E_Salary INT 
);
drop table Employee;

INSERT INTO Employee ( E_id,E_name,E_Add,E_Salary)
VALUES
(101,'Aadiya', 'PUNE', 70000),
(102,'Shivam','Mumbai',60000),
(103,'Prathmesh','Banglore',65000),
(104,'Pravin','Chennai',60000);

SELECT E_id, E_name, E_Salary
FROM Employee
WHERE E_Salary > (SELECT AVG(E_Salary) FROM Employee);

SELECT E_id, E_name, E_Salary FROM Employee
WHERE  E_Salary>(select 60000);

