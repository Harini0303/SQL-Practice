-- How do you make a table in a database?
-- Customer(
--     customer_id,
--     Customer_name,
--     customer_address,
--     city,
--     state,
--     ZIP_Code
-- )

-- Inset some values to the customer tables

-- How can we change the customer_address colum to address

--how do you add a new column called mobile_no

--how do you delete a column where mobile_no is null?

-- adding records into the customer table 

INSERT INTO customer VALUES
(1, 'John Doe', '392 Sunset Blvd.', 'New York', 'NT', '10059', '555-123-4567'),
(2, 'Mary Smith', '6900 Main St.', 'San Francisco', 'CA', '94032', '555-987-6543'),
(3, 'Richard Newman', '2040 Riverside Rd.', 'San Diego', 'CA', '92010', '555-555-5555'),
(4, 'Cathy Cook', '4010 Speedway', 'San Diego', 'CA', '85719', '555-321-7890'),
(5, 'Alice Johnson', '123 Oak Street', 'San Diego', 'CA', '90001', '555-111-2222'),
(6, 'Bob Williams', '456 Elm Avenue', 'Chicago', 'IL', '60601', '555-444-7777');
