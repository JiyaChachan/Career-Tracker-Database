-- 59_add_new_company_and_contact.sql
-- Adds a new company and an associated recruiter contact.

USE trackerdb;

INSERT INTO company 
	(company_id, company_name, industry, headquarter, website)
VALUES 
	(11, 'Nvidia', 'Tech', 'Santa Clara', 'https://www.nvidia.com/en-us/about-nvidia/careers/');


INSERT INTO contact 
	(contact_id, name, email_address, phone_number, company_id)
VALUES 
	(DEFAULT, 'Anita Rao', 'anita.rao@nvidia.com', '4085550190', 11);
