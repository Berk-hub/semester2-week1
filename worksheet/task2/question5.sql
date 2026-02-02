-- For each student, calculate the total number of credits from courses they passed. Assume a passing grade is 40 or higher.
-- Expected Columns:
-- StudentId, FirstName, LastName, TotalCreditsPassed
SELECT 
    s.StudentId,
    s.FirstName,
    s.LastName,
    COALESCE(
        SUM(CASE WHEN e.Grade >= 40 THEN c.CreditHours ELSE 0 END),  
        0
    ) AS TotalCreditsPassed
FROM Student s
LEFT JOIN Enrolment e ON s.StudentId = e.StudentId  
LEFT JOIN Course c ON e.CourseId = c.CourseId
GROUP BY s.StudentId, s.FirstName, s.LastName  
ORDER BY s.LastName, s.FirstName; 
