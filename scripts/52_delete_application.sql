-- 52_delete_application.sql
-- Deletes an application and its related documents and interviews for application_id = 28.

USE trackerdb;

DELETE FROM document 
WHERE
    application_id = 28;

DELETE FROM interview 
WHERE
    application_id = 28;

DELETE FROM application 
WHERE
    application_id = 28;
