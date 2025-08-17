-- 56_delete_user_document.sql

USE trackerdb;

DELETE FROM document 
WHERE
    document_id = 5;
