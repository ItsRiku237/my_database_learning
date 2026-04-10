-- DELETE - Removing Data from a Table
-- The DELETE statement removes rows from a table.

USE startersql;

-- Basic Syntax
-- DELETE FROM table_name
-- WHERE condition;

-- Consider running a SELECT with the same WHERE clause first to confirm what will be affected:
SELECT * FROM users WHERE name = 'Raj';
-- Always back up important data before performing destructive operations.


SET SQL_SAFE_UPDATES = 0;
-- Then run your query

DELETE FROM users
WHERE name = 'Raj';

-- Re-enable for safety
SET SQL_SAFE_UPDATES = 1;


-- Delete All Rows (but keep table structure)
-- DELETE FROM users;

-- Drop the Entire Table (use with caution) [This removes the table structure and all data permanently]
-- DROP TABLE users;


SELECT * FROM users;
