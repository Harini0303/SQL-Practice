-- How do you make a table in a database?
-- Customer(
--     customer_id,
--     Customer_name,
--     customer_address,
--     city,
--     state,
--     ZIP_Code
-- )

-- Insert some values into the customer tables

-- How can we change the customer_address column to address?

-- How do you add a new column called mobile_no?

-- How do you delete a column where mobile_no is null?

-- Adding records into the customer table

INSERT INTO customer VALUES
(1, 'John Doe', '392 Sunset Blvd.', 'New York', 'NT', '10059', '555/123/4567'),
(2, 'Mary Smith', '6900 Main St.', 'San Francisco', 'CA', '94032', '555/987/6543'),
(3, 'Richard Newman', '2040 Riverside Rd.', 'San Diego', 'CA', '92010', '555/555/5555'),
(4, 'Cathy Cook', '4010 Speedway', 'San Diego', 'CA', '85719', '555/321/7890'),
(5, 'Alice Johnson', '123 Oak Street', 'San Diego', 'CA', '90001', '555/111/2222'),
(6, 'Bob Williams', '456 Elm Avenue', 'Chicago', 'IL', '60601', '555/444/7777');

-- How to show all the records
SELECT customer_name FROM customer;

-- How can you update the phone no of Mary Smith to '82203/12345'?
UPDATE customer SET mobile_no = '82204/12345' WHERE customer_name = 'Mary Smith';

-- How can you delete the record where the ZIP_Code is "60601"?
DELETE FROM customer WHERE ZIP_CODE = '90001';

-- How can you select distinct data where the user is from the state 'CA'?
SELECT * FROM customer WHERE state = 'CA';

-- How do you print customer id who are greater than 5?
SELECT * FROM customer WHERE customer_id > 5 LIMIT 0, 1000;

-- How do you delete the mobile_no column?
ALTER TABLE customer DROP COLUMN mobile_no;

-- How do you truncate a table?
TRUNCATE TABLE customer;

-- AGGREGATE FUNCTIONS

CREATE TABLE students (
    student_name VARCHAR(100),
    marks INT,
    department VARCHAR(100)
);

-- RECORDS
INSERT INTO students VALUES('Harini', 99, 'CSE');
INSERT INTO students VALUES('Aakash', 98, 'CSE');
INSERT INTO students VALUES('Manoj', 75, 'MECH');
INSERT INTO students VALUES('Kunal', 80, 'ECE');
INSERT INTO students VALUES('Raj', 70, 'EEE');

-- sum()
SELECT SUM(marks) FROM students;

SELECT SUM(marks) AS total_marks FROM students;

-- max()
SELECT MAX(marks) FROM students;

-- min()
SELECT MIN(marks) FROM students;

-- avg()
SELECT AVG(marks) FROM students;

-- count()
SELECT COUNT(student_name) FROM students;

SELECT student_name FROM students WHERE department = 'CSE';

SELECT COUNT(student_name) FROM students WHERE department = 'CSE';

-- GROUP BY AND ORDER BY
SELECT * FROM students WHERE department = 'CSE';

-- Descending / highest to lowest
SELECT student_name, marks FROM students ORDER BY marks DESC;

-- Ascending / lowest to highest
SELECT student_name, marks FROM students ORDER BY marks ASC;

-- Based on one column we are ordering the column according to our wish / ORDER BY
SELECT marks FROM students;

-- If I need the average marks for a particular department
SELECT AVG(marks) FROM students GROUP BY department;

-- For each department, it's giving the average
SELECT AVG(marks), department FROM students GROUP BY department;

-- If I try to print the student name along with the above command
-- SELECT AVG(marks), department, student_name FROM students GROUP BY department; -- error

-- How many students in each department
SELECT COUNT(student_name), department FROM students GROUP BY department;

-- With above query, we can also use ORDER BY

-- Again, new example
CREATE TABLE EMPLOYEE (
    employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

INSERT INTO EMPLOYEE (employee_id, first_name, last_name, department, salary) VALUES
(1, 'JOHN', 'DOE', 'HR', 55000),
(2, 'JANE', 'SMITH', 'IT', 60000),
(3, 'BOB', 'JOHNSON', 'IT', 62000),
(4, 'ALICE', 'WILLIAMS', 'HR', 54000),
(5, 'EVA', 'DAVIS', 'FINANCE', 58000),
(6, 'MIKE', 'BROWN', 'FINANCE', 59000);

SELECT * FROM EMPLOYEE;

-- 1. List all the employees in alphabetical order by last name
SELECT * FROM EMPLOYEE ORDER BY first_name ASC;

-- List all the employees in the IT department and sort them by salary in descending order
SELECT * FROM EMPLOYEE WHERE department = 'IT' ORDER BY salary DESC;

-- Output will be 6
SELECT COUNT(*) FROM EMPLOYEE;

-- Find the total number of employees in each department
SELECT COUNT(employee_id) FROM EMPLOYEE GROUP BY department;

-- If I need for the particular department
SELECT COUNT(*) FROM EMPLOYEE WHERE department = 'IT';

-- Calculate the average salary for each department, sorted in ascending order by department name
SELECT AVG(salary), department FROM EMPLOYEE GROUP BY department ORDER BY department ASC;

-- Find the department with the highest average salary
SELECT AVG(salary), department FROM EMPLOYEE GROUP BY department ORDER BY AVG(salary) DESC;

-- We need to use LIMIT 
SELECT AVG(salary), department FROM EMPLOYEE GROUP BY department ORDER BY AVG(salary) DESC LIMIT 1;

-- HAVING CLAUSE
-- Find the department that has a salary less than 60000
SELECT department, salary FROM EMPLOYEE WHERE salary < 60000;

-- Find the department with an average salary less than 60000
SELECT AVG(salary), department FROM EMPLOYEE GROUP BY department HAVING AVG(salary) < 60000;

-- Find the department with an average salary greater than 55000 or more than two employees
SELECT department FROM EMPLOYEE GROUP BY department HAVING AVG(salary) > 55000 OR COUNT(employee_id) > 2;
