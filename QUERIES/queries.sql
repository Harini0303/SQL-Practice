-- 1. Create a table named "Students" with columns for ID (INT), NAME (VARCHAR), and AGE (INT)
CREATE TABLE Students(
    ID  int,
    Name varchar(100),
    Age int
);

-- 2. Add a new column "grade" (VARCHAR) to the "Students" table
ALTER TABLE Students ADD COLUMN Grade varchar(100);

-- or
ALTER TABLE Students ADD Grade varchar(100);

-- 3. Rename the "Grade" column to "FinalGrade"
ALTER TABLE Students CHANGE Grade FinalGrade varchar(100);

-- or
ALTER TABLE Students RENAME COLUMN Grade TO FinalGrade;

-- 4. Insert 10 new students as dummy records
INSERT INTO Students VALUES
(101, 'John Doe', 20, 'A'),
(102, 'Jane Smith', 22, 'B'),
(103, 'Bob Johnson', 19, 'C'),
(104, 'Allice Brown', 21, 'A'),
(105, 'Charlie Davis', 20, 'B'),
(106, 'Emma Wilson', 23, 'A'),
(107, 'Michael Lee', 20, 'C'),
(108, 'Olivia Moore', 19, 'B'),
(109, 'William Turner', 21, 'A'),
(110, 'Sophia Rodriguez', 22, 'C');

-- 5. Update the age of the student with ID 101 to 21
UPDATE Students SET Age = 21 WHERE ID = 101;

-- 6. Delete the student with ID 101 from the Students table
DELETE FROM Students WHERE ID = 101;

-- 7. Retrieve all the students aged 19 or older
SELECT * FROM Students WHERE Age >= 19;

-- or
SELECT Name FROM Students WHERE Age >= 19;

-- 8. Retrieve students named 'William Turner' or 'Allice Brown'
SELECT * FROM Students WHERE Name = 'William Turner' OR Name = 'Allice Brown';

-- or
SELECT * FROM Students WHERE Name IN ('William Turner', 'Allice Brown');

-- 9. Retrieve students with grade 'A' or 'B' and aged 20 or older
SELECT * FROM Students WHERE Age >= 20 AND FinalGrade IN ('A', 'B');

-- or
SELECT * FROM Students WHERE (FinalGrade = 'A' OR FinalGrade = 'B') AND Age >= 20;

-- 10. Retrieve students aged between 18 and 25
SELECT * FROM Students WHERE Age BETWEEN 18 AND 25;

-- 11. Retrieve students with ages less than 18
SELECT * FROM Students WHERE Age < 18;

-- 12. Retrieve students with grade greater than 'C'
SELECT * FROM Students WHERE FinalGrade > 'C';

-- 13. Count the total number of students
SELECT COUNT(*) FROM Students;

-- 14. Calculate the average age of students
SELECT AVG(Age) FROM Students;

-- 15. Find the sum of ages for students with grades 'A' or 'B'
SELECT SUM(Age), FinalGrade FROM Students GROUP BY FinalGrade ORDER BY FinalGrade LIMIT 2;

-- or
SELECT AVG(Age) FROM Students WHERE FinalGrade = 'A' OR FinalGrade = 'B';

-- or
SELECT SUM(Age) FROM Students WHERE FinalGrade = 'A' OR FinalGrade = 'B';

-- 16. Group students by grade and count the number of students in each grade
SELECT COUNT(*), FinalGrade FROM Students GROUP BY FinalGrade;

-- or
SELECT COUNT(*), FinalGrade FROM Students GROUP BY FinalGrade ORDER BY FinalGrade ASC;

-- 17. Group students by age and calculate the average in each group
SELECT AVG(Age), Age FROM Students GROUP BY Age;

-- or
SELECT AVG(Age) FROM Students GROUP BY FinalGrade;

-- or
SELECT AVG(Age), FinalGrade FROM Students GROUP BY FinalGrade;

-- 18. Find the grade with the highest number of students
SELECT COUNT(*), FinalGrade FROM Students GROUP BY FinalGrade ORDER BY COUNT(*) DESC LIMIT 1;

-- 19. Find grades with an average age > 22
SELECT AVG(Age), FinalGrade FROM Students GROUP BY FinalGrade HAVING AVG(Age) > 22;

-- 20. Find grades with fewer than 3 students
SELECT COUNT(*), FinalGrade FROM Students GROUP BY FinalGrade HAVING COUNT(*) < 3;

-- 21. Find grades with an average age between 20 and 25
SELECT AVG(Age), FinalGrade FROM Students GROUP BY FinalGrade HAVING AVG(Age) BETWEEN 20 AND 25;

-- 22. List all students in ascending order of age
SELECT * FROM Students ORDER BY Age ASC;

-- or
SELECT Age FROM Students ORDER BY Age ASC;

-- 23. List students with grade 'A' or 'B' in descending order of age
SELECT * FROM Students WHERE FinalGrade IN ('A', 'B') ORDER BY Age DESC;

-- 24. Sort students by grade in alphabetical order
SELECT * FROM Students ORDER BY FinalGrade ASC;

-- 25. Delete the Students table
DROP TABLE Students;
