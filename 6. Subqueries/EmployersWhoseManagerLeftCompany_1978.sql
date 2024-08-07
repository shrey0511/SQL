-- https://leetcode.com/problems/employees-whose-manager-left-the-company/?envType=study-plan-v2&envId=top-sql-50

-- Write your MySQL query statement below
Select employee_id from Employees e
where manager_id not in (Select employee_id from Employees)
AND salary < 30000
ORDER BY employee_id