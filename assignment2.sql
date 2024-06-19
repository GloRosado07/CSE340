SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'account';

-- Insert a new record into the account table with correct column names
INSERT INTO account (account_firstname, account_lastname, account_email, account_password)
VALUES ('Tony', 'Stark', 'tony@starkent.com', 'Iam1ronM@n');

--verify trable structure
SELECT account_id
FROM account
WHERE account_email = 'tony@starkent.com';


-- Update the account_type for Tony Stark
UPDATE account
SET account_type = 'Admin'
WHERE account_id = 1;  -- Replace 1 with the actual account_id

-- Delete the Tony Stark record
DELETE FROM account
WHERE account_id = 1;  -- Replace 1 with the actual account_id

-- Find the account_id for Tony Stark
SELECT account_id
FROM account
WHERE account_email = 'tony@starkent.com';

-- Update the account_type for Tony Stark
UPDATE account
SET account_type = 'Admin'
WHERE account_id = 1;  -- Replace 1 with the actual account_id

-- Delete the Tony Stark record
DELETE FROM account
WHERE account_id = 1;  -- Replace 1 with the actual account_id

-- assignment2.sql

-- Update the account_type for Tony Stark
UPDATE account
SET account_type = 'Admin'
WHERE account_id = 1;  -- Replace 1 with the actual account_id

-- Delete the Tony Stark record
DELETE FROM account
WHERE account_id = 1;  -- Replace 1 with the actual account_id

-- assignment2.sql

-- Update the account_type for Tony Stark
UPDATE account
SET account_type = 'Admin'
WHERE account_id = 1;  -- Replace 1 with the actual account_id

-- Delete the Tony Stark record
DELETE FROM account
WHERE account_id = 1;  -- Replace 1 with the actual account_id


-- #1  Add classification_id column to inventory table
ALTER TABLE public.inventory
ADD COLUMN classification_id INT;

--#3 Create foreign key relationship between inventory and classification
ALTER TABLE public.inventory
ADD CONSTRAINT fk_classification
FOREIGN KEY (classification_id)
REFERENCES public.classification (classification_id)
ON UPDATE CASCADE
ON DELETE NO ACTION;

--#4 Update the GM Hummer description
UPDATE public.inventory
SET inv_description = REPLACE(inv_description, 'small interiors', 'a huge interior')
WHERE inv_make = 'GM' AND inv_model = 'Hummer';

--#5 Select make and model from inventory for Sport category
SELECT inv.inv_make, inv.inv_model, cls.classification_name
FROM public.inventory inv
INNER JOIN public.classification cls ON inv.classification_id = cls.classification_id
WHERE cls.classification_name = 'Sport';

--#6 Update file paths in inv_thumbnail
UPDATE public.inventory
SET inv_thumbnail = REPLACE(inv_thumbnail, '/images/', '/images/vehicles/a-car-name.jpg');


