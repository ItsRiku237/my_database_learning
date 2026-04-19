-- MySQL Views

USE startersql;

-- A view in MySQL is a virtual table based on the result of a SELECT query. It does
-- not store data itself — it always reflects the current data in the base tables.

-- Creating a View
CREATE VIEW rich_users AS
SELECT * FROM users WHERE salary> 70000;

-- Querying the View
SELECT * FROM rich_users;

--			or
CREATE VIEW rich_users AS
SELECT id, name, salary
FROM users
WHERE salary > 70000;

SELECT name ,salary FROM rich_users;

DROP VIEW IF EXISTS rich_users;


-- Summary
-- 1.Views act like saved SELECT queries
-- 2.Views are not duplicated data
-- 3.Changes to base tables are reflected automatically
-- 4.Great for simplifying complex queries or creating filtered access
