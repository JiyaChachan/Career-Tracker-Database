-- 13_user_avg_salary_by_industry.sql
-- Shows average salary of jobs a user has applied to, grouped by company industry.
-- Helps users identify which industries offer higher-paying roles based on their own applications.

USE trackerdb;

SELECT 
    c.industry, ROUND(AVG(p.salary), 2) AS avg_salary
FROM
    application a
        JOIN
    position p ON a.position_id = p.position_id
        JOIN
    company c ON p.company_id = c.company_id
WHERE
    a.user_id = 1
GROUP BY c.industry
ORDER BY avg_salary DESC;

