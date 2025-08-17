-- 51_update_application_status.sql
-- Updates the status of a specific application from 'Applied' to 'Interviewing'.

USE trackerdb;

UPDATE application 
SET 
    status_type_id = 2
WHERE
    application_id = 28;
