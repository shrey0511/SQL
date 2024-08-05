-- https://leetcode.com/problems/project-employees-i/?envType=study-plan-v2&envId=top-sql-50

-- Write your MySQL query statement below
Select 
    project_id , ROUND(AVG(e.experience_years),2) 
as 
    average_years 
from 
    Project p 
join 
    Employee e 
on 
    p.employee_id = e.employee_id 
group by 
    project_id 