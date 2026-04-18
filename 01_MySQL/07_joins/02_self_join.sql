-- Self JOIN

USE startersql;

-- A Self JOIN is a regular join, but the table is joined with itself.
-- This is useful when rows in the same table are related to each other. For example,
-- when users refer other users, and we store the ID of the person who referred them
-- in the same users table.

-- Step 1: Add a referred_by_id Column
ALTER TABLE users
ADD COLUMN referred_by_id INT;


-- Step 2: Insert Referral Data 
UPDATE users SET referred_by_id = 5 WHERE id IN (8,9, 10, 15, 16,23,28,32);
UPDATE users SET referred_by_id = 6 WHERE id IN (13,20,26); 


-- Step 3: Use a Self JOIN to Get Referrer Names
SELECT
a.id,
a.name AS user_name,
b.name AS referred_by
FROM users a
INNER JOIN users b ON a.referred_by_id = b.id;


SELECT
a.id,
a.name AS user_name,
b.name AS referred_by
FROM users a
LEFT JOIN users b ON a.referred_by_id = b.id;

-- Explanation:
-- a refers to the user being queried.
-- b refers to the user who referred them.
-- LEFT JOIN is used so that users with NULL in referred_by_id are also included.

SELECT * FROM users;