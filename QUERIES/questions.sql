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


--how to show the all the records
select customer_name from customer

---how can you update the phone no of mary Smith to '82203-12345'

update customer set mobile_no="82204-12345" where customer_name="Mary Smith"

--how can you delete the record where the zip_code is "60601"

delete from customer where ZIP_CODE="90001"

-- how can you select distinct data where the user is from a state="CA"

select * from customer where state='CA'

--how do you print customer id who are greater that 5?
select * from customer where customer_id > 5 LIMIT 0, 1000


--how do you delete the mobile_no column 

alter table customer drop column mobile_no

--how do you truncate a table

truncate table customer


--AGGREEGATE FUNCTIONS

create table students(
student_name varchar(100),
marks int,
department varchar(100)
)

--RECORDS
insert into student values("Harini",99,"CSE")
insert into student values("Aakash",98,"CSE")
insert into student values("Manoj",75,"MECH")
insert into student values("kunal",80,"ECE")
insert into student values("raj",70,"EEE")

--sum()

select sum(marks) from students 

select sum(marks) as total_marks from students 

--max()

select max(marks) from students

--min()

select min(marks) from students


--avg()

select avg(marks) from students

--count()

select count(student_name) from students

select student_name from students where department="CSE"

select count(student_name) from students where department="CSE"