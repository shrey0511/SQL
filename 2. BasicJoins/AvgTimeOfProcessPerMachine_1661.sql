-- https://leetcode.com/problems/average-time-of-process-per-machine/?envType=study-plan-v2&envId=top-sql-50

Select a.machine_id , ROUND(AVG(b.timestamp - a.timestamp),3) AS processing_id
FROM 
    Activity a 
JOIN 
    Activity b
ON
    a.machine_id = b.machine_id AND
    a.process_id = b.process_id AND
    b.activity_type = 'end' AND
    a.activity_type = 'start'
GROUP BY
    a.machine_id
