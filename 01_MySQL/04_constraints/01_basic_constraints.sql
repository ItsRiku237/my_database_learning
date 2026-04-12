-- Constraints

USE startersql;

-- UNIQUE Constraint
-- ALTER TABLE users
-- ADD CONSTRAINT unique_email UNIQUE (email);


-- NOT NULL Constraint
-- ALTER TABLE usrs
-- MODIFY COLUMN name VARCHAR(150) NOT NULL;

--  CHECK Constraint
ALTER TABLE users
ADD CONSTRAINT check_dob CHECK ( date_of_birth > 1910-11-23);
-- Naming the constraint ( chk_dob ) helps if you want to drop it later.


-- DEFAULT Constraint
-- Example:
-- CREATE TABLE users (
-- id INT PRIMARY KEY,
--  is_active BOOLEAN DEFAULT TRUE
-- );
-- ALTER TABLE users
-- ALTER COLUMN is_active SET DEFAULT TRUE;


-- PRIMARY KEY Constraint
ALTER TABLE users
ADD PRIMARY KEY (id);

-- AUTO_INCREMENT
-- Used with PRIMARY KEY to automatically assign the next number.

SELECT * FROM users;


-- Constraint		 Purpose
-- UNIQUE 			Prevents duplicate values
-- NOT NULL 		Ensures value is not NULL
-- CHECK 			Restricts values using a condition
-- DEFAULT 			Sets a default value
-- PRIMARY KEY 		Uniquely identifies each row
-- AUTO_INCREMENT 	Automatically generates unique numbers
