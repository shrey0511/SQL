-- https://leetcode.com/problems/managers-with-at-least-5-direct-reports/?envType=study-plan-v2&envId=top-sql-50

-- Write your MySQL query statement below
Select name from Employee where id IN
# Find the id with 5 reports
(Select managerId from Employee GROUP BY managerId -- w.r.t this id we want
having COUNT(DISTINCT id) >= 5)