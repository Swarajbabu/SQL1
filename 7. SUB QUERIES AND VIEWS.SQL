use college1;

show  tables;

CREATE TABLE student (
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO student (rollno, name, marks, grade, city) VALUES
(107, "neha", 88, "B", "Pune"),
(108, "arjun", 91, "A", "Mumbai"),
(109, "priya", 76, "C", "Delhi"),
(110, "rohit", 69, "D", "Pune"),
(111, "kavita", 95, "A", "Mumbai"),
(112, "amit", 84, "B", "Delhi"),
(113, "sneha", 73, "C", "Pune"),
(114, "vikram", 58, "F", "Mumbai"),
(115, "pooja", 90, "A", "Delhi");

select * from student;

-- sub queries are queries within queries also called nested queries
-- sub queries are used to fetch data based on the result of another query
-- sub queries can be used with SELECT, INSERT, UPDATE, DELETE statements
-- sub queries can be used with comparison operators, IN, ANY, ALL, EXISTS..ETC
-- sub queries can be used in WHERE, HAVING, FROM clauses
-- example of sub query to find students with marks greater than average marks

select avg(marks) from student;

-- finding students with marks greater than average marks
select name,marks from student where marks>(select avg(marks) from student);

-- finding students with marks equal to maximum marks
select * from student where marks = (select max(marks) from student);

-- finding students from cities where average marks is greater than 80
select name,rollno from student where rollno in (select rollno from student where rollno%2=0);
select * from student where rollno%2=0;

-- finding maximum marks from students of Delhi
select max(marks) from (select * from student where city = "Delhi") as temp;


-- Views in sql are virtual tables based on the result set of a sql query
-- Views are used to simplify complex queries, enhance security, and provide a layer of abstraction
-- example of creating a view to show only name, rollno and marks of students 
--this is used for the teacher there is no need to show all the data of the student

-- creating a view
create view teacher as
select name,rollno,marks from student;

-- using the view to fetch data
select * from teacher
