USE startersql;
	
					-- Querying Data in MySQL using SELECT--

-- This fetches every column and every row from the users table.
SELECT * FROM users;
-- This only fetches the name and email columns from all rows.
SELECT name , email FROM users;


-- Filtering Rows with WHERE

-- Equal To
SELECT * FROM users WHERE gender = 'male';

-- Not Equal To
SELECT * FROM users WHERE GENDER != 'MALE';
SELECT * FROM users WHERE gender <> 'male';


-- Greater Than / Less Than /Greater Than or Equal / Less Than or Equal
SELECT * FROM users WHERE date_of_birth < '1990-01-01';
SELECT * FROM users WHERE id >10;


-- Working with NULL
-- IS NULL
SELECT * FROM users WHERE date_of_birth IS NULL;
-- IS NOT NULL
SELECT * FROM users WHERE date_of_birth IS NOT NULL;


-- BETWEEN
SELECT * FROM users WHERE date_of_birth BETWEEN '1940-11-01' AND '1990-11-23';

-- IN
SELECT * FROM users WHERE gender IN ('male' , 'female');

-- LIKE (Pattern Matching)
SELECT * FROM users WHERE name LIKE 'R%'; -- Starts with R
SELECT * FROM users WHERE name LIKE '%u'; -- End with u
SELECT * FROM users WHERE name LIKE '%oh%'; -- Contains 'oh'

-- AND / OR
SELECT * FROM users WHERE gender = 'male' AND date_of_birth < '1990-01-01';
SELECT * FROM users WHERE gender = 'female' OR gender = 'other';

-- ORDER BY
SELECT * FROM users ORDER BY date_of_birth ASC;
SELECT * FROM users ORDER BY name DESC;

-- LIMIT
SELECT * FROM users LIMIT 5; -- Top 5 rows
SELECT * FROM users LIMIT 10 OFFSET 5; -- Skip first 5 rows, then get next 10
SELECT * FROM users LIMIT 5,10; -- Get 10 rows starting from the 6th row (Same as above)

SELECT * FROM users ORDER BY created_at DESC LIMIT 10;