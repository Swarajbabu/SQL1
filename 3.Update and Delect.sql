CREATE DATABASE college1;
USE college1;

CREATE TABLE student (
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO student (rollno, name, marks, grade, city) VALUES
(107, "neha", 88, "B", "Pune"),(108, "arjun", 91, "A", "Mumbai"),(109, "priya", 76, "C", "Delhi"),
(110, "rohit", 69, "D", "Pune"),(111, "kavita", 95, "A", "Mumbai"),(112, "amit", 84, "B", "Delhi"),
(113, "sneha", 73, "C", "Pune"),(114, "vikram", 58, "F", "Mumbai"),(115, "pooja", 90, "A", "Delhi");

select * from student;

-- Update command in because we are changing the existing data in the table where it is in 
-- safe mode by default 0 is off and 1 is on the safe mode

set SQL_SAFE_UPDATES = 0;       -- important

-- updateing grade of all the students who have grade A to O
update student set grade = "O" where grade = "A";

select * from student;

-- updating marks of student whose roll no is 115
update student set marks = "12" where rollno = "115";

-- updating grade of student whose roll no is 115
update student set grade = "F" where rollno = "115";

-- Arithmetic Operators: + (add), - (subtract), * (multiply), / (divide), % (modulus)
-- Comparison Operators: =, !=, >, <, >=, <=
-- Logical Operators: AND, OR, NOT, IN, BETWEEN, ALL, LIKE, ANY
-- Bitwise Operators: & (AND), | (OR)

-- updating grade based on marks
update student set grade = "A" where marks>90;

-- updating grade based on marks between 80 and 90
update student set grade = "B" where marks between 80 and 90;

-- increasing marks of all students by 5
update student set marks = marks+5;

-- updating student marks and grade based on roll no
UPDATE student SET marks = 85, grade = "B" WHERE rollno = 105;

-- increasing marks of students by 3 who are from Mumbai
UPDATE student SET marks = marks + 3 WHERE city = "Mumbai";

-- using case statement to update grade based on marks
update student set grade =
case
	when marks>=80 then "A"
    when marks>=60 and marks<=80  then "B"
    when marks>=30 and marks<60 then "C"
    else "F"
end;


-- delecting student record

INSERT INTO student (rollno, name, marks, grade, city) VALUES
(166, "aditya", 67, "C", "Pune"),(167, "pooja", 12, "F", "Mumbai"),(168, "ramesh", 94, "A", "Delhi"),(169, "nikita", 38, "D", "Pune"),
(170, "sanjay", 81, "B", "Mumbai"),(171, "mehul", 59, "C", "Delhi"),(172, "ananya", 100, "A", "Pune"),(173, "vijay", 7, "F", "Mumbai"),
(174, "sonam", 72, "B", "Delhi"),(175, "harsh", 45, "D", "Pune"),(176, "karthik", 88, "B", "Mumbai"),(177, "deepa", 26, "F", "Delhi"),
(178, "pranav", 91, "A", "Pune"),(179, "ishita", 63, "C", "Mumbai"),(180, "lokesh", 54, "C", "Delhi"),(181, "neeraj", 99, "A", "Pune"),
(182, "manisha", 31, "D", "Mumbai"),(183, "abhishek", 76, "B", "Delhi"),(184, "shraddha", 84, "B", "Pune"),(185, "naveen", 9, "F", "Mumbai"),
(186, "tarun", 68, "C", "Delhi"),(187, "shilpa", 92, "A", "Pune"),(188, "rahul", 41, "D", "Mumbai"),(189, "simran", 57, "C", "Delhi"),
(190, "yogesh", 73, "B", "Pune");

select * from student; 

-- deleting student record based on roll no
delete from student where rollno = "114";

-- deleting student record based on name
delete from student where name = "yogesh";

-- deleting student record based on city
delete from student where city = "Delhi";

-- Arithmetic Operators: + (add), - (subtract), * (multiply), / (divide), % (modulus)
-- Comparison Operators: =, !=, >, <, >=, <=
-- Logical Operators: AND, OR, NOT, IN, BETWEEN, ALL, LIKE, ANY
-- Bitwise Operators: & (AND), | (OR)

-- deleting student record based on marks less than 40
delete from student where marks<40;

-- deleting student record based on grade and marks
delete from student where grade = "C" and marks = "57";

-- deleting student record based on city or grade
DELETE FROM student WHERE city = "Mumbai" OR grade = "D";

-- deleting student record where city is in Mumbai and Pune
delete from student where city in ("Mumbai,Pune");

-- deleting student record where grade is not in T and E
delete from student where grade not in ("T","E");

-- deleting student record where marks between 20 and 30
delete from student where marks between 20 and 30;
select * from student;

-- deleting only one record based on order by clause
delete from student order by rollno asc limit 1;