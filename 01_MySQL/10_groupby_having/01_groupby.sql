-- GROUP BY

USE startersql;

-- The GROUP BY clause is used to group rows that have the same values in
-- specified columns. It is typically used with aggregate functions like COUNT , SUM , AVG , MIN , or MAX .

-- Example: Average Salary by Gender
SELECT gender , AVG(salary) AS Avg_salary ,COUNT(*) AS Count
FROM users 
GROUP BY gender;


-- GROUP BY with COUNT 
SELECT referred_by_id ,COUNT(*) AS Count
FROM users
WHERE referred_by_id IS NOT NULL
GROUP BY referred_by_id;



-- ROLLUP
-- To get subtotals and grand totals, you can use ROLLUP :
SELECT gender, COUNT(*) AS total_users
FROM users
GROUP BY gender WITH ROLLUP;


SELECT * FROM users;


-- Summary
-- Clause 			Purpose							Can use aggregates?
-- WHERE 		Filters rows before grouping 				No
-- GROUP BY		Groups rows based on column values		 	N/A
-- HAVING 		Filters groups after aggregation 			Yes
