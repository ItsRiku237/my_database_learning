-- Stored Procedures

USE startersql;

-- A stored procedure is a saved SQL block that can be executed later. It’s useful
-- when you want to encapsulate logic that can be reused multiple times — like
-- queries, updates, or conditional operations.


-- By default, MySQL uses ; to end SQL statements.
-- But when defining stored procedures, we use ; inside the procedure as well. This
-- can confuse MySQL. To avoid this, we temporarily change the delimiter (e.g. to
-- $$ or // ) while creating the procedure.

DELIMITER $$
-- create a stored procedure that inserts a new user into the users table.
CREATE PROCEDURE add_user(
	 IN p_id INT,
	 IN p_name VARCHAR(100),
     IN p_email VARCHAR(100),
     IN p_gender ENUM('Male', 'Female' ,'Other'),
     IN p_dob DATE,
     IN p_salary INT
)
BEGIN
	INSERT users (id,name , email , gender, date_of_birth,salary)
    VALUES (p_id,p_name, p_email, p_gender, p_dob, p_salary);
    SELECT * FROM users;
END $$
DELIMITER ;
-- After the procedure is created, we reset the delimiter back to ; 


-- Calling the Procedure
CALL add_user(33,'Kiran Sharma', 'kiran@example.com', 'Female', '1994-06-15', 72000);


-- Viewing Stored Procedures
SHOW PROCEDURE STATUS WHERE Db = 'startersql';

-- Dropping a Stored Procedure
DROP PROCEDURE IF EXISTS add_user;


-- Notes
-- Input parameters are declared using the IN keyword.
-- Stored procedures are stored in the database and can be reused.


-- Summary
-- Command			 		Purpose
-- DELIMITER $$ 		Temporarily change statement delimiter
-- CREATE PROCEDURE 	Defines a new stored procedure
-- CALL 				procedure_name(...) Executes a stored procedure
-- DROP PROCEDURE 		Removes an existing procedure
