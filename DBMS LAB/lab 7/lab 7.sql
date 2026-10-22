use College_db;
SELECT City, COUNT(*) AS TotalStudents
FROM Students
GROUP BY City
HAVING COUNT(*) > 1;