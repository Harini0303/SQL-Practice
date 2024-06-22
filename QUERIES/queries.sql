-- 1.create a table name "Students" with columns for ID (INT) , NAME (VARCHAR) , AGE (INT)

CREATE TABLE Students(
    ID  int,
    Name varchar(100),
    Age int
)

-- 2.add a new column "garde" varchar to the "student " table

alter table Students add column Grade varchar(100)

--or

alter table Students add Grade varchar(100)

--3.rename the grade column to final grade

alter table students change Grade FinalGrade varchar(100)

--or

alter table Students rename column grade to FinalGrade

--4. insert 10 new students as dummy records

INSERT into Students VALUES
(101,"John Doe",20,'A'),
(102,"Jane Smith",22,'B'),
(103,"Bob Johnson",19,'C'),
(104, 'Allice Brown', 21, 'A'),
(105, 'Charlie Davis', 20, 'B'),
(106, 'Emma Wilson', 23, 'A'),
(107, 'Michael Lee', 20, 'C'),
(108, 'Olivia Moore', 19, 'B'),
(109, 'William Turner', 21, 'A'),
(110, 'Sophia Rodriguez', 22, 'C');


--5. update the age of student with ID 101 to 21.

update students set age=21 where ID=101

--6.delete the student id 101 from the student table

delete from students where ID=101

-- 7. retrieve all the studens aged 19 or older

select * from students where age >= 19


-- or 

select Name from students where age >= 19


--8. retrive students name 'william turner' or 'allice brown'

select * from students where Name="William Turner" OR Name="Allice Brown"

--or
select * from students where Name in ("William Turner","Allice Brown")

--9.retrive students with grade 'A' or 'B' and aged 20 or older

select * from students where age >=20 AND FinalGrade in('A','B')

--or

select * from students where FinalGrade='A' or FinalGrade='B' and age>=20

--10. retrive students aged between 18 and 25

select * from students where age between 18 and 20

--11. retrive students with ages less tahn 18

select * from students where age < 18

--12. retrive students with grade greater tham 'c'

select * from students where FinalGrade > 'C'

--13. count the total number of students 

select count(*) from students 

--14. calculate the average age of students

select avg(age) from students

--15. find the sum of ages for students with grades 'A' or 'B'

select sum(age),FinalGrade from students group by FinalGrade order by FinalGrade limit 2

--or 

select avg(age) from students where FinalGrade='A' or FinalGrade='B'

--or 
select sum(age) from students where FinalGrade='A' or FinalGrade='B'

--16. group students by grade and count the number of students in each grade

select count(*),FinalGrade from students group by FinalGrade

--or

select count(*),FinalGrade from students group by FinalGrade order by FinalGrade asc

--17. group students by age and calculate the average in each group

select avg(age),age from students group by age

--or 

select avg(age) from students group by FinalGrade

--or

select avg(age),FinalGrade from students group by FinalGrade

--18. find the grade with the highest no of students

select count(*),FinalGrade from students group by FinalGrade order by FinalGrade desc limit 1

--19. find grade with an average age > 22

select avg(age),FinalGrade from students group by FinalGrade having avg(age) > 21

--20. find grade with fewer than 3 students

select count(*),FinalGrade from students group by FinalGrade having count(*) > 3

--21. find grades with an average  age between 20 and 25

select avg(age),FinalGrade from Students group by FinalGrade having avg(age) between 20 and 25

--22. list all the students in asc order of age

select age from students order by age

--or

select * from students order by age asc

--23. list students with grade 'A' or 'B' in desc order of age 


--24. sort students by grade in alphabetic order

SELECT * FROM Students
ORDER BY FinalGrade ASC;

--25. delete table

delete table Students



