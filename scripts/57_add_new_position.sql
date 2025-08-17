-- 57_add_new_position.sql
-- Adds a new position for a company with full details including visa sponsorship and position type.

USE trackerdb;

INSERT INTO position 
	(position_id, position_name, department, sponsorship_id, location, salary, position_type_id, company_id)
VALUES 
	(DEFAULT, 'Data Platform Intern', 'Data Engineering', 1, 'Chicago', 28000.00, 3, 7);
