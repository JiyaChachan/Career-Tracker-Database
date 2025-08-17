-- 58_delete_position.sql
-- Deletes a specific position (e.g., Data Platform Intern) from the database.

USE trackerdb;

DELETE FROM application 
WHERE
    position_id = 20;

DELETE FROM position 
WHERE
    position_id = 20;
