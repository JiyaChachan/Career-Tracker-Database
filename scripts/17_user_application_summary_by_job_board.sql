-- 17_user_application_summary_by_job_board.sql
-- Summarizes the user's application count per job board.
-- Helps users understand where they’re most active.

USE trackerdb;

SELECT 
    jb.board_name, COUNT(*) AS total_applications
FROM
    application a
        JOIN
    job_board jb ON a.job_board_id = jb.job_board_id
WHERE
    a.user_id = 1
GROUP BY jb.board_name
ORDER BY total_applications DESC
