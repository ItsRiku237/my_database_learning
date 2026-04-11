USE startersql;

-- To rename an existing table: 
RENAME TABLE users TO Programmers;
RENAME TABLE Programmers TO users;


-- Add a Column :
ALTER TABLE users ADD COLUMN salary DECIMAL(10, 2);

-- Drop a Column:
ALTER TABLE users DROP COLUMN is_active;

-- Modify a Column Type:
ALTER TABLE users MODIFY COLUMN name VARCHAR(150);

-- Move a Column to the First Position
ALTER TABLE users MODIFY COLUMN email VARCHAR(100) FIRST;

-- To move a column after another column:
ALTER TABLE users MODIFY COLUMN name VARCHAR(150) AFTER email;

SELECT * FROM users;
