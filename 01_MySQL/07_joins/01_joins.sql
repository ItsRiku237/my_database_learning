-- SQL JOINs :
USE startersql;

SELECT * FROM users;
SELECT * FROM addresses;


-- INNER JOIN
-- Returns only the matching rows from both tables
SELECT users.name , addresses.state , addresses.city , addresses.id AS addresses_id
FROM users
INNER JOIN addresses ON users.id = addresses.user_id;


-- LEFT JOIN
-- Returns all rows from the left table ( users ), and matching rows from the right
-- table ( addresses ). If no match is found, NULLs are returned.
SELECT users.name , addresses.state , addresses.city , addresses.id AS addresses_id
FROM users
LEFT JOIN addresses ON users.id = addresses.user_id;


-- RIGHT JOIN
-- Returns all rows from the right table ( addresses ), and matching rows from the
-- left table ( users ). If no match is found, NULLs are returned.
SELECT users.name , users.gender,addresses.state , addresses.city , addresses.id
FROM users
LEFT JOIN addresses ON users.id = addresses.user_id;



-- Summary Table
-- JOIN Type 					Description
-- INNER JOIN 				Only matching rows from both tables
-- LEFT JOIN 				All rows from left table + matching from right
-- RIGHT JOIN 				All rows from right table + matching from left
