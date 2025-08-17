-- 55_update_user_document.sql
-- Updates a document (new resume upload) for an existing application.

USE trackerdb;

UPDATE document 
SET 
    filename = 'Resume_Updated',
    filepath = '/uploads/applications/3/Resume_Updated_May2025.pdf',
    upload_date = '2025-05-06 15:00:00'
WHERE
    document_id = 4;
