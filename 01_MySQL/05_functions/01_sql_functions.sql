-- SQL Functions
-- SQL functions help you analyze, transform, or summarize data in your tables.

USE startersql;

-- Aggregate Functions [These return a single value from a set of rows]
-- COUNT()
SELECT COUNT(*) FROM users;
SELECT COUNT(*) FROM users WHERE gender = 'male';

-- MIN() and MAX()
SELECT MIN(salary) AS min_salary , MAX(salary) AS max_salary FROM users;

-- SUM() AND AVG()
SELECT SUM(salary) AS SUM_salary FROM users;
SELECT AVG(salary) AS AVG_salary FROM users;

-- Grouping with GROUP BY :
-- SELECT gender, AVG(salary) AS avg_salary
-- FROM users
-- GROUP BY gender;
SELECT gender, AVG(salary) AS AVG_salary FROM users GROUP BY gender;

-- String Functions
-- LENGTH() , CONCAT() ,  LOWER() and UPPER() 
SELECT id ,NAME, LOWER(name) AS low_name , 	CONCAT(LOWER(name), '2379') AS user_name, LENGTH(NAME) AS len_name FROM users;

-- Date Functions
-- NOW() ,YEAR() , MONTH() , DAY()
SELECT name , NOW() AS time , YEAR(NOW()) AS year , YEAR(date_of_birth) AS yob , MONTH(date_of_birth) AS mob , DAY(date_of_birth) AS birth_day FROM users;

-- DATEDIFF()
SELECT NAME , DATEDIFF(CURDATE(),date_of_birth) AS days FROM users;

-- TIMESTAMPDIFF()
-- Calculate age in years:
SELECT TIMESTAMPDIFF(YEAR ,date_of_birth, CURDATE()) AS age FROM users;

-- Mathematical Functions
-- ROUND() , FLOOR() , CEIL()
SELECT salary ,
 ROUND(salary) AS rounded,
 FLOOR(salary) AS floored,
 CEIL(salary) AS ceiled
FROM users;

-- MOD() : Find even or odd user IDs:
SELECT id , MOD(id , 2) AS remainder FROM USERS;
 
-- Conditional Functions : IF()
SELECT name , gender,
	IF(gender = 'FEMALE' , 'YES' ,'NO') AS is_female
FROM users;
-- in place of yes and no u can write any thing.



-- Function 		Purpose
-- COUNT() 			Count rows
-- SUM() 			Total of a column
-- AVG() 			Average of values
-- MIN() / MAX() 	Lowest / highest value
-- LENGTH() 		String length
-- CONCAT() 		Merge strings
-- YEAR() / DATEDIFF() Date breakdown / age
-- ROUND() 			Rounding numbers
-- IF() 			Conditional logic
