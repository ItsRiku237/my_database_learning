-- Subqueries in MySQL (nested_queries)

-- A subquery is a query nested inside another query. Subqueries are useful for
-- breaking down complex problems into smaller parts.

USE startersql;

-- They can be used in : SELECT statements,WHERE clauses,FROM clauses

-- Frequently asked in interviews:
-- “Find employees earning above average salary”
SELECT id, name ,salary
FROM users
WHERE salary > (SELECT AVG(salary) FROM users);
-- Explanation:
-- The inner query: SELECT AVG(salary) FROM users returns the average salary.
-- The outer query selects all users with a salary greater than that average.



-- Now let’s say we want to find users who have been referred by someone who earns
-- more than ₹75,000
SELECT id , name , referred_by_id
FROM users
WHERE referred_by_id IN (
	SELECT id FROM users WHERE salary> 80000
);


SELECT name, salary,
(SELECT AVG(salary) FROM users) AS average_salary
FROM users;
-- This shows each user’s salary along with the overall average.


-- Summary:
-- Subquery 			Type Use Case
-- Scalar Subquery 		Returns one value (e.g. AVG, MAX)
-- Subquery with IN 	Returns multiple values
-- Subquery in SELECT 	Shows related calculated value
-- Subquery in FROM 	Acts as a virtual table