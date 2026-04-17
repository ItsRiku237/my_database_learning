-- SQL UNION and UNION ALL

USE startersql;

CREATE TABLE admin_users (
id INT PRIMARY KEY,
 name VARCHAR(100),
 email VARCHAR(100),
 gender ENUM('Male', 'Female', 'Other'),
 date_of_birth DATE,
 salary INT
);

INSERT INTO admin_users (id, name, email, gender, date_of_birth, salary) VALUES
(101, 'Anil Kumar', 'anil@example.com', 'Male', '1985-04-12', 60000),
(102, 'Pooja Sharma', 'pooja@example.com', 'Female', '1992-09-20', 58000),
(103, 'Rakesh Yadav', 'rakesh@example.com', 'Male', '1989-11-05', 54000),
(104, 'Fatima Begum', 'fatima@example.com', 'Female', '1990-06-30', 62000);


-- The UNION operator in SQL is used to combine the result sets of two or more
-- SELECT statements. It removes duplicates by default.
-- If you want to include all rows including duplicates, use UNION ALL .


SELECT * FROM users;
SELECT * FROM addresses;
SELECT * FROM admin_users;


--  Use UNION to Combine Data
-- This returns a single list of unique names from both tables.
SELECT name FROM users
UNION
SELECT name FROM admin_users;


-- UNION ALL
-- If you want to keep duplicate names (if any), use UNION ALL .
SELECT name, email FROM users
UNION ALL
SELECT name,email FROM admin_users;

-- Adding separate roles
SELECT name, email, 'Users' AS role FROM users
UNION 
SELECT name,email, 'Admin' AS role FROM admin_users;


-- Using Order By with UNION
SELECT name , date_of_birth FROM users
UNION
SELECT name ,date_of_birth FROM admin_users
-- ORDER BY date_of_birth;
ORDER BY name;



-- When to Use UNION
-- When you have two similar tables (like current and archived data).
-- When you need to combine filtered results (e.g., high-salary users from two sources).
-- When performing cross-category reporting.

-- Rules of UNION
-- The number of columns and their data types must match in all SELECT statements.
-- UNION removes duplicates by default.
-- UNION ALL keeps duplicates
