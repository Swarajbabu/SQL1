
-- creating an database  

create database collage;
use collage;

-- creating an table
 
create table student(
	id int primary key,
    name varchar(50),
    age int not null
); 

-- inserting an values into tables-- 

Insert into student values(1,"Swaraj",20);
insert into student values(2,"jayanth",18);

-- printing an table-- 

select * from student;

show databases;
show tables;

create table student_fee(
	ID int primary key,
    Name varchar(50),
    FEE int
);

insert into student_fee 
(ID,Name,FEE) 
values
(101,"Swaraj",90000),
(102,"Gopi",89000),
(103,"pushpa",120000);

select * from student_fee;

create database temp;
use temp;

create table emp(
	id int,
    name varchar(50),
    age int,
    primary key(id)    -- we can give primary here also
);

insert into emp values(1,"Swaraj",25); 
insert into emp values(2,"Babu",85); 

create table emp_fee(
	id int unique,
    name varchar(50)
);

insert into emp_fee values(5,"swaraj");
select * from emp_fee;

create table emp_details(
	id int primary key,
    salary int default 25000
);

insert into emp_details values (100,999999); 
insert into emp_details (id) values (5);
select * from emp_details;

create database STATE;
use STATE;

create table city(
	id int primary key,
    city varchar(50),
    age int,
    constraint age_checker check (age>=18 and city = "Delhi")
);
insert into city values(1,"Delhi",18);

insert into city (id,city,age) value
(10, 'Delhi', 25),
(20, 'Delhi', 30),
(30, 'Delhi', 28),
(40, 'Delhi', 32),
(50, 'Delhi', 27);
-- if the city is delhi and age must be above 18 only that values will add into table
-- because we have used the constraint.
select * from city;

create table age (
	age int,
    constraint age_check check (age>=18)
);
insert into age values(12); -- this value donot enter because we have given constraint
insert into age values(25); -- this value will enter because it satisfies the constraint



