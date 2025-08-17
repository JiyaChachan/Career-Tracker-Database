-- 19_user_applications_by_position_type_and_sponsorship.sql
-- Summarizes user applications by position type and visa sponsorship status.
-- Helps users see how many roles of each type support sponsorship.

USE trackerdb;

SELECT 
    pt.type_name AS position_type,
    vst.sponsorship_status,
    COUNT(*) AS total_applications
FROM
    application a
        JOIN
    position p ON a.position_id = p.position_id
        JOIN
    position_type pt ON p.position_type_id = pt.position_type_id
        JOIN
    visa_sponsorship_type vst ON p.sponsorship_id = vst.sponsorship_id
WHERE
    a.user_id = 1
GROUP BY pt.type_name , vst.sponsorship_status
ORDER BY pt.type_name , total_applications DESC;
