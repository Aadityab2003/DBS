CREATE DATABASE DCL;
USE DCL;

CREATE TABLE Employee
(
E_id INT PRIMARY KEY,
E_name VARCHAR(70),
E_Salary INT
);


INSERT INTO Employee(E_id,E_name,E_Salary)
VALUES
(101,'Aaditya',80000),
(102,'Prathmesh',70000),
(103,'Santosh',65000),
(104,'Keshav',78000);

CREATE user user1 IDENTIFIED BY 'user123';

GRANT SELECT ON Employee TO user1;
GRANT INSERT ON Employee TO user1;
GRANT UPDATE ON Employee TO User1;  

select * from Employee;

INSERT INTO Employee values( 105,'Pravin',45000);

UPDATE Employee
SET E_name='Kaustubh'
WHERE E_id=105;

REVOKE SELECT,INSERT,UPDATE ON Employee FROM 'user1';
