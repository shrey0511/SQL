-- https://leetcode.com/problems/consecutive-numbers/?envType=study-plan-v2&envId=top-sql-50

-- Write your MySQL query statement below
Select distinct a.num as ConsecutiveNums from Logs a 
join Logs b ON a.id = b.id+1 AND a.num = b.num
join Logs c ON a.id = c.id+2 AND a.num = c.num