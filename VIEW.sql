CREATE DATABASE Views;

USE Views;


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


CREATE VIEW high_salary_employee AS
SELECT *
FROM employee
WHERE E_salary > 60000;


SELECT * FROM high_salary_employee;

CREATE VIEW Low_salary_employee AS
SELECT *
FROM employee
WHERE E_salary < 70000;

SELECT * FROM Low_salary_employee