USE college__db;

CREATE TABLE students(
studentID INT PRIMARY KEY,
NAME VARCHAR(50) NOT NULL,
email VARCHAR(100) UNIQUE,
Age INT,
City VARCHAR(50)
);
DESC students;

INSERT INTO students (studentID,NAME, email, Age, City) VALUES
(1, 'Aparna', 'aparna@gmail.com', 20, 'Chennai'),
(2, 'Rahul', 'rahul@gmail.com', 21, 'Delhi'),
(3, 'Priya', 'priya@gmail.com', 22, 'Mumbai');
SELECT * FROM students;

SELECT*FROM students
ORDER BY NAME ASC;

SELECT DISTINCT City FROM students;

SELECT*FROM students
WHERE NAME LIKE 'A%';

SELECT*FROM students
WHERE City IN('Chennai','Mumbai');

SELECT*FROM students
WHERE Age BETWEEN 20 AND 22;
