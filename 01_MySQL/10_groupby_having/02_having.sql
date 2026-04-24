-- HAVING

USE startersql;

-- HAVING Clause: Filtering Groups
-- The HAVING clause is used to filter groups after aggregation — similar to how
-- WHERE filters individual rows
-- WHERE is used before grouping. HAVING is used after groups are formed

-- Let’s say we only want to show genders where the average salary is greater than ₹75,000.
SELECT gender , AVG(salary) AS Avg_salary
FROM users
GROUP BY gender
HAVING AVG(salary) > 67000;

-- Example: Groups with More Than 5 Referral
SELECT referred_by_id ,COUNT(*) AS Count
FROM users
WHERE referred_by_id IS NOT NULL
GROUP BY referred_by_id
HAVING COUNT(*) > 5;


-- ROLLUP

SELECT referred_by_id ,COUNT(*) AS Count
FROM users
WHERE referred_by_id IS NOT NULL
GROUP BY referred_by_id 
WITH ROLLUP
HAVING COUNT(*) > 1;

SELECT * FROM users;


-- Summary
-- Clause 			Purpose							Can use aggregates?
-- WHERE 		Filters rows before grouping 				No
-- GROUP BY	 	Groups rows based on column values		 	N/A
-- HAVING 		Filters groups after aggregation 			Yes
