-- More on MySQL

-- 1. Logical Operators

-- Operator 				Description 						Example
-- AND 			All conditions must be true 		salary > 50000 AND gender = 'Male'
-- OR 			At least one condition is true		gender = 'Male' OR gender ='Other'
-- NOT 			Reverses a condition NOT 			gender = 'Female'

-- 2. Add a Column to an Existing Table
ALTER TABLE users
ADD COLUMN city VARCHAR(100);

-- Wildcard Operators
SELECT * FROM users WHERE name LIKE '_a_h%' ; -- (second letter is ‘a’ & FOURTH LATER IS H)
SELECT * FROM users WHERE name LIKE 'a%' ; --  (starts with A)

-- 4. LIMIT with OFFSET
SELECT * FROM users
ORDER BY id
LIMIT 5 OFFSET 10;

-- Alternative syntax:
SELECT * FROM users
ORDER BY id
LIMIT 10, 5;



-- 5. DISTINCT Keyword
-- DISTINCT is used to return only unique values.
SELECT DISTINCT gender FROM users;


-- 6. TRUNCATE Keyword
-- TRUNCATE removes all rows from a table, but keeps the table structure.
TRUNCATE TABLE users;
-- Faster than DELETE FROM users
-- Cannot be rolled back (unless in a transaction-safe environment)


-- 7. CHANGE vs MODIFY Column
-- CHANGE: Rename and change datatype
ALTER TABLE users
CHANGE COLUMN city location VARCHAR(150);

-- MODIFY: Only change datatype
ALTER TABLE users
MODIFY COLUMN salary BIGINT;