-- https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/?envType=study-plan-v2&envId=top-sql-50

-- Write your MySQL query statement below
Select mgr.employee_id , mgr.name , count(emp.reports_to) as reports_count ,ROUND(AVG(emp.age),0) as average_age
from Employees emp JOIN Employees mgr 
ON emp.reports_to = mgr.employee_id 
group by mgr.employee_id
order by mgr.employee_id