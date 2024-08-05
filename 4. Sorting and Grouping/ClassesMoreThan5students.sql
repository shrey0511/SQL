-- https://leetcode.com/problems/classes-more-than-5-students/?envType=study-plan-v2&envId=top-sql-50

-- Write your MySQL query statement below
Select class from courses group by class having COUNT(student) >= 5