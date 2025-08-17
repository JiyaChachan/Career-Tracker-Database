-- 14_days_to_first_interview.sql
-- Shows how many days it took from application to first interview, along with company and position.
-- Helps users assess how quickly companies respond after applying.

USE trackerdb;

SELECT 
    a.application_id,
    c.company_name,
    p.position_name,
    DATEDIFF(MIN(i.interview_date),
            a.application_date) AS days_to_first_interview
FROM
    application a
        JOIN
    interview i ON a.application_id = i.application_id
        JOIN
    position p ON a.position_id = p.position_id
        JOIN
    company c ON p.company_id = c.company_id
WHERE
    a.user_id = 1
GROUP BY a.application_id , c.company_name , p.position_name , a.application_date
ORDER BY days_to_first_interview;
