-- https://leetcode.com/problems/department-top-three-salaries/?envType=study-plan-v2&envId=top-sql-50

-- Write your MySQL query statement below
Select d.name as Department , e.name as Employee , e.salary as Salary
from (Select departmentId ,name ,salary, DENSE_RANK() over(partition by departmentId order by salary desc) as r
from Employee) e join Department d
on e.departmentId = d.id 
where r<=3