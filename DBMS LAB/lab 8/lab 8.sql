USE College_db;

CREATE TABLE Courses (
CourseID INT,
StudentID INT,
CourseName VARCHAR(50)
);

INSERT INTO Courses VALUES
(101, 1, 'DBMS'),
(102, 2, 'Python'),
(103, 4, 'Java');

SELECT s.Name, c.CourseName
FROM Students s
INNER JOIN Courses c
ON s.StudentID = c.StudentID;

SELECT s.Name, c.CourseName
FROM Students s
LEFT JOIN Courses c
ON s.StudentID = c.StudentID;

SELECT s.Name, c.CourseName
FROM Students s
RIGHT JOIN Courses c
ON s.StudentID = c.StudentID;

SELECT s.Name, c.CourseName
FROM Students s
FULL OUTER JOIN Courses c
ON s.StudentID = c.StudentID;