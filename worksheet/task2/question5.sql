-- For each student, calculate the total number of credits from courses they passed. Assume a passing grade is 40 or higher.
-- Expected Columns:
-- StudentId, FirstName, LastName, TotalCreditsPassed
SELECT
    s.student_id AS StudentId,
    s.first_name AS FirstName,
    s.last_name AS LastName,
    COALESCE(SUM(c.credits), 0) AS TotalCreditsPassed
FROM students s
LEFT JOIN enrolments e ON s.student_id = e.student_id AND e.grade >= 40
LEFT JOIN courses c ON e.course_id = c.course_id
GROUP BY s.student_id, s.first_name, s.last_name;
