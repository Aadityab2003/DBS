CREATE DATABASE Tri;
use Tri;

CREATE TABLE employe (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    position VARCHAR(50),
    salary DECIMAL(10, 2)
);

CREATE TABLE audit_log (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    action_type VARCHAR(10),
    action_time DATETIME,
    emp_id INT,
    details VARCHAR(100)
);

DELIMITER $$

CREATE TRIGGER after_employee_insert
AFTER INSERT ON employe
FOR EACH ROW
BEGIN
    INSERT INTO audit_log (action_type, action_time, emp_id, details)
    VALUES ('INSERT', NOW(), NEW.emp_id, CONCAT('Added employee: ', NEW.name));
END$$

DELIMITER ;

DELIMITER $$

CREATE TRIGGER after_employee_delete
AFTER DELETE ON employe
FOR EACH ROW
BEGIN
    INSERT INTO audit_log (action_type, action_time, emp_id, details)
    VALUES ('DELETE', NOW(), OLD.emp_id, CONCAT('Removed employee: ', OLD.name));
END$$

DELIMITER ;

DELIMITER $$

CREATE TRIGGER after_employee_update
AFTER UPDATE ON employees
FOR EACH ROW
BEGIN
    INSERT INTO audit_log (action_type, action_time, emp_id, details)
    VALUES ('UPDATE', NOW(), NEW.emp_id, CONCAT('Updated employee: ', NEW.name, ', Old Salary: ', OLD.salary, ', New Salary: ', NEW.salary));
END$$

DELIMITER ;

UPDATE employe
SET salary = 80000.00
WHERE emp_id = 1;


drop table employe;
INSERT INTO employe (emp_id, name, position, salary)
VALUES (1, 'Aaditya', 'Administrator', 75000.00),
       (2, 'Prathmesh', 'Developer', 55000.00);
Select * from employe;

UPDATE employe
SET salary = 80000.00
WHERE emp_id = 1;

DELETE FROM employees
WHERE emp_id = 2;
