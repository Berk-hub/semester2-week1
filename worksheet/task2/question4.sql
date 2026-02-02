-- List all students along with the names of the courses they are enrolled in.
-- Expected Columns:
-- StudentId, FirstName, LastName, CourseName
SELECT
    s.student_id AS StudentId,
    s.first_name AS FirstName,
    s.last_name AS LastName,
    c.course_name AS CourseName
FROM students s
LEFT JOIN enrolments e ON s.student_id = e.student_id
LEFT JOIN courses c ON e.course_id = c.course_id;
