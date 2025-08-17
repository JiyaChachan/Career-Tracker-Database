-- 53_add_interview_for_application.sql
-- Adds a new interview entry and updates the application status to 'Interviewing'.

USE trackerdb;

INSERT INTO interview 
	(interview_id, interview_type_id, outcome_id, interview_date, application_id)
VALUES 
	(DEFAULT, 3, 5, '2025-05-10 14:00:00', 3);

UPDATE application 
SET 
    status_type_id = 2
WHERE
    application_id = 3;
