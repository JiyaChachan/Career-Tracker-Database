-- 15_user_company_contacts.sql
-- Shows recruiter contacts at companies where the user has applied.
-- Helps users identify potential networking opportunities tied to their own job applications.

USE trackerdb;

SELECT DISTINCT
    c.company_name, ct.name AS contact_name, ct.email_address
FROM
    application a
        JOIN
    position p ON a.position_id = p.position_id
        JOIN
    company c ON p.company_id = c.company_id
        JOIN
    contact ct ON c.company_id = ct.company_id
WHERE
    a.user_id = 1
ORDER BY c.company_name , ct.name;
