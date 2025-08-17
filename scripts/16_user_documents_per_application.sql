-- 16_user_documents_per_application.sql
-- Lists the submitted documents for each of the user's applications.
-- Helps users check which applications are missing specific documents.

USE trackerdb;

SELECT 
    a.application_id,
    c.company_name,
    p.position_name,
    COUNT(d.document_id) AS document_count,
    GROUP_CONCAT(DISTINCT d.filename
        ORDER BY d.filename
        SEPARATOR ', ') AS document_types
FROM
    application a
        JOIN
    position p ON a.position_id = p.position_id
        JOIN
    company c ON p.company_id = c.company_id
        LEFT JOIN
    document d ON a.application_id = d.application_id
WHERE
    a.user_id = 1
GROUP BY a.application_id , c.company_name , p.position_name
ORDER BY document_count ASC;
