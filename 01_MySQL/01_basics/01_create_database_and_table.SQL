CREATE DATABASE startersql;

USE startersql;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- Data Types :
-- INT : Integer type, used for whole numbers.
-- VARCHAR(100) : Variable-length string, up to 100 characters.
-- ENUM : A string object with a value chosen from a list of permitted values. eg.
-- gender ENUM('Male', 'Female', 'Other')
-- DATE : Stores date values. eg date_of_birth DATE
-- TIMESTAMP : Stores date and time, automatically set to the current timestamp
-- when a row is created.
-- BOOLEAN : Stores TRUE or FALSE values, often used for flags like is_active .


-- Constraints :
-- AUTO_INCREMENT : Automatically generates a unique number for each row.
-- PRIMARY KEY : Uniquely identifies each row in the table.
-- NOT NULL : Ensures a column cannot have a NULL value.
-- UNIQUE : Ensures all values in a column are different.
-- DEFAULT : Sets a default value for a column if no value is provided. eg.
-- created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP , is_active BOOLEAN DEFAULT TRUE


-- This fetches every column and every row from the users table.
SELECT * FROM users;
-- This only fetches the name and email columns from all rows.
SELECT name , email FROM users;



-- To rename an existing table: 
RENAME TABLE users TO Programmers;
RENAME TABLE Programmers TO users;


-- You can delete the entire database (and all its tables) using:
DROP DATABASE startersql;
