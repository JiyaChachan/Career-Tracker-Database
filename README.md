# Career-Tracker-Database

This repository contains the SQL scripts for the Career Tracker system, a dedicated tool designed to help job seekers effectively manage and organize their job applications, interviews, and related details. The primary users of this system are university students, recent graduates, and professionals actively seeking internships, co-ops, or full-time positions.

1. System Overview
The Career Tracker is a prototype designed to solve the common problem of managing the job search process, which is often done with scattered spreadsheets or notes. By providing a centralized database, it helps users:

Log Applications: Create applications for specific companies and roles.

Track Statuses: Update the status of each application as it progresses.

Record Interviews: Log interview details, including type, date, and outcome.

Store Contacts: Keep track of recruiter and company contacts for networking.

Manage Documents: Link and store documents like resumes and cover letters with each application.

Add Notes: Attach personal notes to applications for follow-ups and key details.

This system is built specifically for job tracking, offering a focused solution that is more structured than generic tools while avoiding the complexity of overly featured platforms.

2. Database Schema
The database schema is structured to efficiently store all job tracking information. The main tables and their relationships are detailed in the Entity-Relationship Diagram (ERD).

Key tables include:

system_user: Stores information about the system users.

company: A list of companies where users have applied.

position: Details about specific job roles, including salary, location, and department.

application: The central table that connects a user to a position, a job board, and an application status.

interview: A record of all interviews related to an application.

document: Manages file uploads associated with applications.

note: For capturing personal thoughts and follow-up reminders.

contact: Stores contact information for recruiters.

A full Entity-Relationship Diagram (ERD) is provided for a complete visual representation of the database design.

3. SQL Query Examples
The repository includes a collection of SQL query files that demonstrate how to interact with the database and extract valuable insights. These queries can be used for building analytics dashboards or custom reports.

Informational Queries
These queries help users and developers understand the state of their job search:

11_user_application_status.sql: Lists all applications for a specific user, including company, position, and current status.

12_user_upcoming_interviews.sql: Displays interviews scheduled for a user.

13_user_avg_salary_by_industry.sql: Shows the average salary of jobs applied to, grouped by industry.

14_days_to_first_interview.sql: Calculates the number of days it took to get the first interview after applying.

15_user_company_contacts.sql: Lists recruiter contacts at companies where the user has applied.

16_user_documents_per_application.sql: Shows a count and list of documents submitted per application.

17_user_application_summary_by_job_board.sql: Summarizes total applications per job board.

18_user_application_notes.sql: Displays all personal notes tied to a user's applications.

19_user_applications_by_position_type_and_sponsorship.sql: Summarizes applications by position type and visa sponsorship status.

Database Management Queries
These scripts are useful for setting up and managing the database:

10_restore_populated_database.sql: A full script to drop, create, and populate the entire database with sample data.

Additional Operations
Based on the file names, the repository also seems to include scripts for performing common CRUD (Create, Read, Update, Delete) operations, which are essential for the application's functionality:

50_add_new_application.sql

51_update_application_status.sql

52_delete_application.sql

53_add_interview_for_application.sql

54_add_user_note_to_application.sql

55_update_user_document.sql

56_delete_user_document.sql

57_add_new_position.sql

58_delete_position.sql

59_add_new_company_and_contact.sql
