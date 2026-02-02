-- List all students along with the names of the courses they are enrolled in.
-- Expected Columns:
-- StudentId, FirstName, LastName, CourseName
SELECT
    s.StudentId,
    s.FirstName,
    s.LastName,
    c.CourseName
FROM Students s
LEFT JOIN Enrolments e ON s.StudentId = e.StudentId
LEFT JOIN Courses c ON e.CourseId = c.CourseId;
