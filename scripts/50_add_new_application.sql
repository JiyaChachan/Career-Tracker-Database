-- 50_add_new_application.sql
-- Adds a new application for user_id = 1, including attached documents (resume).

USE trackerdb;

INSERT INTO application 
	(application_id, application_date, user_id, position_id, job_board_id, status_type_id)
VALUES 
	(28, '2025-05-06 10:00:00', 1, 7, 4, 1);

INSERT INTO document 
	(document_id, filename, filetype, filepath, upload_date, application_id)
VALUES 
	(DEFAULT, 'Resume', 'pdf', '/uploads/applications/28/19_Resume.pdf', '2025-05-06 10:01:00', 28);
