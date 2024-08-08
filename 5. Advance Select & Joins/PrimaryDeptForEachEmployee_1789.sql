-- https://leetcode.com/problems/primary-department-for-each-employee/?envType=study-plan-v2&envId=top-sql-50

-- Write your MySQL query statement below
Select employee_id , department_id from Employee 
where primary_flag = 'Y' 
UNION
Select employee_id , department_id from Employee 
group by employee_id
having count(distinct(department_id)) = 1