-- 18_user_application_notes.sql
-- Shows all user notes related to their applications.

USE trackerdb;

SELECT 
    a.application_id,
    c.company_name,
    p.position_name,
    n.content AS note,
    n.date_created
FROM
    note n
        JOIN
    application a ON n.application_id = a.application_id
        JOIN
    position p ON a.position_id = p.position_id
        JOIN
    company c ON p.company_id = c.company_id
WHERE
    a.user_id = 1
ORDER BY n.date_created DESC;
