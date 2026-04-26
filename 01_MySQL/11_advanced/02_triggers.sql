-- Triggers in MySQL

USE startersql;

-- A trigger is a special kind of stored program that is automatically executed
-- (triggered) when a specific event occurs in a table — such as INSERT , UPDATE , or DELETE .

-- Example:
-- Suppose we want to log every time a new user is inserted into the users table.
-- We’ll create a separate table called user_log to store log entries.


CREATE TABLE user_log(
	id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    name VARCHAR(100),
    created_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- Create the Trigger[We now define a trigger that runs after a new user is added.]
DELIMITER $/
CREATE TRIGGER after_user_insert
AFTER INSERT ON users
FOR EACH ROW
BEGIN
	INSERT INTO user_log(user_id , name)
    values(NEW.id, NEW.name);
END &/
DELIMITER ;
-- Explanation:
-- AFTER INSERT means the trigger fires after the user is inserted.
-- NEW refers to the new row being added to the users table.
-- We insert the new user’s ID and name into the user_log table.


-- Test the Trigger
INSERT INTO users(id,name,email, gender, date_of_birth, salary)
values (35,'Rinki', 'rinki@example.com', 'female', '1987-03-26', 75000);

-- or

CALL after_user_insert('Ritika_Jain', 'ritika2@example.com', 'Female', '1996-03-12', 79000);

SELECT * FROM user_log;
SELECT * FROM users;


-- Dropping a Trigger
DROP TRIGGER IF EXISTS after_user_insert;



-- Summary
-- Trigger Component				 Description
-- BEFORE / AFTER				 When the trigger runs
-- INSERT / UPDATE /DELETE		What kind of action triggers it
-- NEW.column 					Refers to the new row (for INSERT , UPDATE )
-- OLD.column					Refers to the old row (for UPDATE , DELETE )
-- FOR EACH ROW 				Executes for each affected row
