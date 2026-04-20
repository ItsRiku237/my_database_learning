-- MySQL Indexes

USE startersql;

SHOW INDEXES FROM users;

-- Indexes in MySQL are used to speed up data retrieval. They work like the index of
-- a book — helping the database engine find rows faster, especially for searches, filters, and joins.

-- Creating a Single-Column Index
CREATE INDEX idx_gender ON users(gender);
-- Usage Example:
SELECT * FROM users WHERE gender = 'male';


-- Creating a Multi-Column Index
CREATE INDEX idx_multi ON  users(gender,salary);
-- Usage Example:
SELECT * FROM users WHERE gender = 'female' AND salary >70000;



-- Index Order Matters
-- For a multi-column index on (gender, salary) :

-- This works efficiently:
-- WHERE gender = 'Female' AND salary > 70000

-- But this may not use the index effectively:
-- WHERE salary > 70000

-- Because the first column in the index ( gender ) is missing in the filter.



-- Dropping an Index
DROP INDEX idx_multi ON users;


SELECT * FROM users;



-- Summary:
-- Feature		 		Description
-- SHOW INDEXES 	View current indexes on a table
-- CREATE INDEX 	Create single or multi-column indexes
-- DROP INDEX 		Remove an index
-- Use when 		Query performance on large tables is a concern
-- Avoid on 		Columns that are rarely queried or always unique or update