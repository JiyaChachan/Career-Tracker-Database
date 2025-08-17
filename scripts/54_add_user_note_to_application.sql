-- 54_add_user_note_to_application.sql
-- Purpose: Adds a note to an existing application submitted by the user.

USE trackerdb;

INSERT INTO note 
	(note_id, content, date_created, application_id)
VALUES 
	(DEFAULT, 'Recruiter confirmed interview time and shared prep material.', '2025-05-06 12:30:00', 5);
