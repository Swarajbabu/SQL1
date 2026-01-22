CREATE DATABASE college1;
USE college1;

CREATE TABLE student3 (
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO student3 (rollno, name, marks, grade, city) VALUES
(107, "neha", 88, "B", "Pune"),
(108, "arjun", 91, "A", "Mumbai"),
(109, "priya", 76, "C", "Delhi"),
(110, "rohit", 69, "D", "Pune"),
(111, "kavita", 95, "A", "Mumbai"),
(112, "amit", 84, "B", "Delhi"),
(113, "sneha", 73, "C", "Pune"),
(114, "vikram", 58, "F", "Mumbai"),
(115, "pooja", 90, "A", "Delhi");

select * from StudentDetails;

-- Alter table is used to make changes in the existing table
-- adding a new column
alter table student3 add age int;

-- adding a new column with default value
alter table student3 add Country varchar(50) default "India";

-- modify is use to change the data type or size only
alter table student3 modify name varchar(100);

-- renaming a column
alter table student3 rename column name to Student_Name;

-- dropping a column
alter table student3 drop column age;

-- renaming the table
alter table student3 rename to StudentDetails;

