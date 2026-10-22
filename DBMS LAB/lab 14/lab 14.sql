USE College_db;

SELECT City FROM Students
UNION
SELECT DeptName FROM Department;


SELECT City FROM Students
UNION ALL
SELECT DeptName FROM Department;


SELECT DISTINCT s.City
FROM Students s
INNER JOIN Department d
ON s.City = d.DeptName;


SELECT DISTINCT s.City
FROM Students s
WHERE s.City IS NOT NULL
AND NOT EXISTS (
    SELECT 1
    FROM Department d
    WHERE d.DeptName = s.City
);

