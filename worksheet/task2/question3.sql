-- For each department, calculate the number of enrolments in its courses.
-- Expected Columns:
-- DepartmentName, TotalEnrolments
SELECT
    d.DepartmentName,
    COUNT(e.EnrolmentId) AS TotalEnrolments
FROM Departments d
LEFT JOIN Courses c ON d.DepartmentId = c.DepartmentId
LEFT JOIN Enrolments e ON c.CourseId = e.CourseId
GROUP BY d.DepartmentName;
