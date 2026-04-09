-- UPDATE - Modifying Existing Data
use startersql;

-- Basic Syntax :
-- UPDATE table_name
-- SET column1 = value1, column2 = value2
-- WHERE condition;

UPDATE users SET salary = 45000 , email = '@aaaravgmail.com' WHERE id = 8;

-- Without WHERE Clause (Warning)
-- UPDATE users
-- SET gender = 'other';
-- This updates every row in the table. Be very careful when omitting the WHERE clause.


--  Increase salary by ₹10,000 for all users whose salary is less than ₹60,000
UPDATE users
SET salary = salary + 10000
WHERE salary < 60000;

select * from users;