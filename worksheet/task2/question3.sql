-- For each department, calculate the number of enrolments in its courses.
-- Expected Columns:
-- DepartmentName, TotalEnrolments
SELECT d.DepartmentName,
       COUNT(e.CourseId) AS TotalEnrolments
FROM Department d
LEFT JOIN Course c
  ON d.DepartmentId = c.DepartmentId
LEFT JOIN Enrolment e
  ON c.CourseId = e.CourseId
GROUP BY d.DepartmentName;
