-- MySQL Transactions and AutoCommit :

-- Disabling AutoCommit :
SET autocommit = 0;
-- Important: Until you execute a COMMIT , your changes are not permanent.


UPDATE users SET salary = 80000 where id = '12';

SELECT * FROM users;

-- COMMIT — Save Changes to the Database 
COMMIT; -- If you’re happy with the changes, run

-- ROLLBACK — Revert Changes to the Last Safe Point
ROLLBACK; -- If you’re not happy and want to revert the changes, run

SELECT * FROM users;

--  Enabling AutoCommit Again
SET autocommit = 1;
