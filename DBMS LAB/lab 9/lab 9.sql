USE College_db;

SELECT Name
FROM Students
WHERE StudentID IN (
SELECT StudentID FROM Courses
);

SELECT Name
FROM Students
WHERE Age > ANY (
SELECT Age FROM Students WHERE City = 'Chennai'
);

SELECT Name
FROM Students
WHERE Age > ALL (
SELECT Age FROM Students WHERE City = 'Delhi'
);

SELECT Name
FROM Students s
WHERE EXISTS (
SELECT 1 FROM Courses c
WHERE s.StudentID = c.StudentID
);