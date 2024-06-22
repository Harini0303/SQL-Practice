// link : https://www.geeksforgeeks.org/sql/concepts/and/queries/

//Query/1
// Show existing databases

SHOW table;

// Query/2 :
// Drop a database

// Query/3 :
// Create a database

CREATE DATABASE bank;
SHOW DATABASES;

// Query/4 :
// Using a database

USE bank;

// Query/5 :
// Create a Table

CREATE TABLE IF NOT EXISTS Employee (
   EmployeeID int,
   FirstName varchar(55),
   LastName varchar(55),
   Email varchar(150),
   DOB date
);

//or

CREATE TABLE Employee (
   EmployeeID int,
   FirstName varchar(55),
   LastName varchar(55),
   Email varchar(150),
   DOB date
);

// Query/6 :
// Show tables in the same database

SHOW TABLES;

// Query/7 :
// Dropping a Table

DROP TABLE table_name;

// Query/8 :
// Inserting values into an existing table

INSERT INTO Employee 
VALUES(1111,'Dipak','Bera','dipakbera@gmail.com','1994/11/22');

// Query/9 :
// Fetching values in a table

SELECT * FROM Employee;

// Query/10 :
// Not Null 
//We can specify which column does not accept the null value when we insert a value(row) in a table. It will be done at the time of table creation.

CREATE TABLE table_name (
  column1 datatype NOT NULL,
  column2 datatype,
 ....
);

// Query/11 :
// Unique
//We can also specify that entries in a particular column should be unique.

CREATE TABLE demo_table
(
EmployeeID int NOT NULL UNIQUE, 
FirstName varchar(55), 
LastName varchar(55)
);

//KEY CONCEPTS in SQL :

//1.PRIMARY KEY –
//The constraint PRIMARY KEY suggests that entries should be neither null nor duplicate corresponding to the specified column.

CREATE TABLE IF NOT EXISTS Customer(
CustID int NOT NULL,
FName varchar(55),
LName varchar(55),
Email varchar(100),
DOB date,
CONSTRAINT customer_custid_pk  PRIMARY KEY(CustID)
);

//2.FOREIGN KEY –
//The FOREIGN KEY is used to build a connection between the current table and the previous table containing the primary key.

CREATE TABLE Account(
AccNo int NOT NULL,
AType varchar(20),
OBal int,
OD date,
CurBal int,
CONSTRAINT customer_AccNo_fk  FOREIGN KEY(AccNo) REFERENCES Customer(CustID)
);

//ORDER BY :
//The ORDER BY keyword is used to show the result in ascending or descending order. By default, it is in ascending order.

SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... ASC|DESC;

//scenario 1

SELECT * FROM Account ORDER BY CurBal;  

//Scenario/2 

SELECT * FROM Account ORDER BY CurBal DESC;

//GROUP BY :
//This keyword is used for grouping the results.

SELECT COUNT(AType) FROM Account GROUP BY AType;


//JOIN CONCEPTS
//SQL Join operation combines data or rows from two or more tables based on a common field between them.

// IT IS USED TO COMBINE ROWS FROM 2 OR MORE TABLES BASED ON THE RELATED COLUMN BETWEEN 

-- the <> operator is used to test for inequality between two expressions

-- Example: Suppose you have a students table with a gender column and you want to retrieve all students who are not female (assuming gender is stored as 'Male' and 'Female'):

SELECT * FROM students WHERE gender <> 'Female';
