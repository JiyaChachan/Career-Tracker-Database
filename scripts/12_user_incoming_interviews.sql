-- 12_user_upcoming_interviews.sql
-- Displays upcoming interviews scheduled for a specific user, including interview type and outcome.

USE trackerdb;
SELECT 
    p.position_name,
    c.company_name,
    it.type_name AS interview_type,
    io.outcome_name AS interview_outcome,
    i.interview_date
FROM
    interview i
        JOIN
    application a ON i.application_id = a.application_id
        JOIN
    position p ON a.position_id = p.position_id
        JOIN
    company c ON p.company_id = c.company_id
        JOIN
    interview_type it ON i.interview_type_id = it.interview_type_id
        JOIN
    interview_outcome io ON i.outcome_id = io.outcome_id
WHERE
    a.user_id = 1
        AND i.interview_date >= CURDATE()
ORDER BY i.interview_date;
