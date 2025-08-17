-- 11_user_application_status.sql
-- Lists all applications submitted by a specific user along with company, position, and current status.

USE trackerdb;
SELECT 
    a.application_id,
    a.application_date,
    c.company_name,
    p.position_name,
    st.status_name AS application_status
FROM
    application a
        JOIN
    position p ON a.position_id = p.position_id
        JOIN
    company c ON p.company_id = c.company_id
        JOIN
    status_type st ON a.status_type_id = st.status_type_id
WHERE
    a.user_id = 1
ORDER BY a.application_date DESC;
