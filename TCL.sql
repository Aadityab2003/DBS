-- Step 1: Create the Employee table
CREATE DATABASE  TCL_C;
USE TCL_C;

CREATE TABLE  Employee (
    E_id INT PRIMARY KEY,
    E_name VARCHAR(70),
    E_Add VARCHAR(60),
    E_Salary INT
);

-- Step 2: Insert initial data into the Employee table
INSERT INTO Employee (E_id, E_name, E_Add, E_Salary)
VALUES
    (101, 'Aadiya', 'Pune', 70000),
    (102, 'Shivam', 'Mumbai', 60000),
    (103, 'Prathmesh', 'Bangalore', 65000),
    (104, 'Pravin', 'Chennai', 60000);


-- Assuming the Employee table already exists
-- Start a transaction
START TRANSACTION;

-- Insert a new employee record
INSERT INTO Employee (E_id, E_name, E_Add, E_Salary)
VALUES (105, 'Aarav', 'Delhi', 75000);

-- Set a savepoint after the first insert
SAVEPOINT InsertedAarav;

-- Insert another employee record
INSERT INTO Employee (E_id, E_name, E_Add, E_Salary)
VALUES (106, 'Meera', 'Hyderabad', 70000);

-- Simulate an error or condition for rollback
-- If we want to undo the second insert (i.e., 'Meera'), we can rollback to the savepoint
ROLLBACK TO SAVEPOINT InsertedAarav;

Select * from Employee;
COMMIT;




