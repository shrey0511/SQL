-- https://leetcode.com/problems/not-boring-movies/?envType=study-plan-v2&envId=top-sql-50

-- Write your MySQL query statement below
Select * from Cinema
where MOD(id,2) = 1 AND description != 'boring' 
order by rating desc