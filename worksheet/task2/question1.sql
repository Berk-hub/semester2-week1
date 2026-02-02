-- List all students who enrolled in the year 2022.
-- Expected Columns:
-- StudentId, FirstName, LastName, EnrolmentYear
SELECT
    student_id AS StudentId,
    first_name AS FirstName,
    last_name AS LastName,
    enrolment_year AS EnrolmentYear
FROM students
WHERE enrolment_year = 2022;
