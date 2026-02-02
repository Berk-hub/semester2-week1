-- For each department, calculate the number of enrolments in its courses.
-- Expected Columns:
-- DepartmentName, TotalEnrolments
SELECT
    d.department_name AS DepartmentName,
    COUNT(e.enrolment_id) AS TotalEnrolments
FROM departments d
LEFT JOIN courses c ON d.department_id = c.department_id
LEFT JOIN enrolments e ON c.course_id = e.course_id
GROUP BY d.department_name;
