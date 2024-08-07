-- https://leetcode.com/problems/second-highest-salary/?envType=study-plan-v2&envId=top-sql-50

-- Write your MySQL query statement below
Select MAX(salary) as SecondHighestSalary from Employee
where salary < (Select MAX(salary) from Employee) 
