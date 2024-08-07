-- https://leetcode.com/problems/delete-duplicate-emails/?envType=study-plan-v2&envId=top-sql-50

-- Write your MySQL query statement below
DELETE p2 from Person p1 JOIN Person p2 
ON p1.email = p2.email AND p2.id > p1.id