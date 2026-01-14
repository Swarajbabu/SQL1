USE temp;
-- foreign key with cascade explanation
-- definition of foreign key = A foreign key is a field (or collection of fields) in one table that uniquely identifies a row of another table. 
-- The purpose of the foreign key is to ensure referential integrity of the data. 
-- In simpler terms, only values that are supposed to appear in the database are permitted.

CREATE TABLE subjects (
    dep_id INT PRIMARY KEY,
    sub VARCHAR(50)
);

INSERT INTO subjects VALUES
(101, 'Mathematics'),
(102, 'Physics'),
(103, 'Computer Science'),
(104, 'Mechanical Engineering'),
(105, 'Data Science');

-- Create child table WITH CASCADE
-- ON DELETE CASCADE: When a record in the parent table is deleted, all related records in the child table are also deleted.
-- ON UPDATE CASCADE: When a primary key in the parent table is updated, all related foreign keys in the child table are also updated.
CREATE TABLE teachers (
    id INT PRIMARY KEY,
    names VARCHAR(50),
    dep_id INT,
    CONSTRAINT fk_dep
    FOREIGN KEY (dep_id) REFERENCES subjects(dep_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

INSERT INTO teachers VALUES
(1, 'Anil Sharma', 101),
(2, 'Bhumi Patil', 102),
(3, 'Rohit Verma', 103),
(4, 'Neha Kulkarni', 104),
(5, 'Amit Deshmukh', 105);

-- ✅ This will now work
DELETE FROM subjects WHERE dep_id = 101;
update subjects set dep_id = 1002 where dep_id = 102; 
-- Check result
select * from subjects;
select * from teachers;