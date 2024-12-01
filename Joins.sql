 CREATE DATABASE Joins;
 
 USE Joins;
 
 CREATE TABLE Customer
 (
   Cust_id  INT  NOT NULL,
   Cust_Name  VARCHAR(50),
   Cust_ADD  VARCHAR(100)
   );
   
CREATE TABLE Payment
(
 Cust_id INT  NOT NULL,
 Pay_amt FLOAT,
 Pay_mode VARCHAR(50)
 );
 DROP TABLE Payment;
 
 INSERT INTO Customer (Cust_id,Cust_Name,Cust_ADD)
 Values
 (1,'Aaditya','Sambhajinagar'),
 (2,'Prathmesh', 'Pune'),
 (3, 'Pravin','Mumbai'),
 (4,'Abhishek','Nagpur'),
 (5,'Shivam' , 'Kolhapur');
 
 
 INSERT INTO Payment (Cust_id, Pay_amt,Pay_mode)
 VALUES
 (1,20000,'CASH'),
 (1,50000,'CASH'),
 (1,10000,'UPI'),
 (6,100,'UPI'),
 (7,30000,'DABIT CARD'),
 (8,1000,'CASH');
 
 UPDATE Payment
 SET Cust_id= 2 WHERE Cust_id= 6;
 select * from Payment;
 SELECT * FROM customer;
 
 ALTER TABLE customer
 MODIFY Cust_id INT PRIMARY KEY;
 
 -- JOINS QUERIES
 -- INEEER JOIN
 SELECT * FROM
 customer AS c
 INNER JOIN 
 Payment AS p ON 
 c.Cust_id= p.Cust_id;
 
 -- LEFT JOIN
 
 SELECT c.Cust_Name , p.Cust_id FROM 
 customer AS c 
 LEFT JOIN payment AS p ON 
 c.Cust_id= p.Cust_id;
 
 -- RIGHT JOIN
 
 SELECT * FROM
 customer AS c RIGHT JOIN
 payment AS p ON
 c.Cust_id=p.Cust_id;

-- FULL JOIN

SELECT  Pay_mode,SUM(Pay_amt) FROM payment GROUP BY Pay_mode 
ORDER BY SUM(Pay_amt) ;

Select pay_mode, COUNT(Pay_amt) FROM payment GROUP BY Pay_mode HAVING COUNT(Pay_mode)>=2;


Select * from Customer as C 
INNER JOIN Payment AS p ON 
C.Cust_id= p.Cust_id;

Select Cust_name,p.Cust_id FROM customer AS c 
LEFT JOIN Payment AS p ON
c.Cust_id= p.Cust_id;