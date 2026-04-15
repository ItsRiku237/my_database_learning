-- Foreign Keys

-- A foreign key is a column that creates a link between two tables. It ensures that
-- the value in one table must match a value in another table.This is used to maintain data integrity between related data

USE startersql;

DROP TABLE IF EXISTS addresses;

-- Explanation:
-- user_id is a foreign key.
-- It references the id column in the users table.
-- This ensures that every address must be linked to a valid user

CREATE TABLE addresses(
	id INT auto_increment primary key,
    user_id INT,
    street VARCHAR(255),
	city VARCHAR(100),
	state VARCHAR(100),
	pincode VARCHAR(10),
	-- FOREIGN KEY (user_id) REFERENCES users(id)
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

INSERT INTO addresses (user_id, street, city, state, pincode)
VALUES
(32, '221B MG Road', 'Mumbai', 'Maharashtra', '400001'),
(22, '14 Park Street', 'Kolkata', 'West Bengal', '700016'),
(31, '32 Residency Road', 'Bengaluru', 'Karnataka', '560025'),
(24, '5 North Usman Road', 'Chennai', 'Tamil Nadu', '600017'),
(5, '17 Hazratganj', 'Lucknow', 'Uttar Pradesh', '226001'),
(6, '55 Banjara Hills', 'Hyderabad', 'Telangana', '500034'),
(7, '88 Connaught Place', 'Delhi', 'Delhi', '110001'),
(30, '89 Connaught Place', 'Delhi', 'Delhi_ncr', '110001'),
(8, '10 MG Marg', 'Dehradun', 'Uttarakhand', '248001'),
(9, '23 Brigade Road', 'Bengaluru', 'Karnataka', '560025'),
(26, '45 Marine Drive', 'Mumbai', 'Maharashtra', '400020'),
(11, '67 Ashoka Road', 'Delhi', 'Delhi', '110001'),
-- (12, '89 MG Road', 'Pune', 'Maharashtra', '411001'),
(13, '12 Brigade Road', 'Bengaluru', 'Karnataka', '560025'),
(14, '34 Park Street', 'Kolkata', 'West Bengal', '700016'),
(15, '56 Connaught Place', 'Delhi', 'Delhi', '110001'),
(16, '78 Marine Drive', 'Mumbai', 'Maharashtra', '400020'),
(17, '90 MG Marg', 'Dehradun', 'Uttarakhand', '248001'),
(18, '11 North Usman Road', 'Chennai', 'Tamil Nadu', '600017'),
(19, '33 Residency Road', 'Bengaluru', 'Karnataka', '560025'),
(20, '22 Hazratganj', 'Lucknow', 'Uttar Pradesh', '226001'),
(21, '19 North Usman Road', 'kolkota', 'Tamil Nadu', '600018'),
(23, '38 Residency Road', 'Bengaluru', 'Karnataka', '560025'),
(27, '19 Hazratganj', 'Lucknow', 'Uttar Pradesh', '226001'),
(28, '57 Banjara Hills', 'Hyderabad', 'Telangana', '500034'),
(29, '85 Connaught Place', 'Delhi', 'Delhi', '110001'),
(25, '23 Hazratganj', 'Lucknow', 'Uttar Pradesh', '226001');

select * from users;
select * from addresses;

DELETE FROM users WHERE ID = 12;

-- Dropping a Foreign Key [you need to know its constraint name. MySQL autogenerates
-- it if you don’t specify one]
-- ALTER TABLE addresses DROP FOREIGN KEY fk_user;


-- Adding a Foreign Key Later (Using ALTER)
ALTER TABLE addresses
ADD CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id);



-- Adding ON DELETE Action
-- If you want addresses to be automatically deleted when the user is deleted:

-- ON DELETE Option        		 Behavior
-- CASCADE 					Deletes all related rows in child table
-- SET NULL 				Sets the foreign key to NULL in the child table
-- RESTRICT 				Prevents deletion of parent if child exists (default)