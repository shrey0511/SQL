-- https://leetcode.com/problems/exchange-seats/?envType=study-plan-v2&envId=top-sql-50

-- Write your MySQL query statement below
Select if(id < (Select max(id) from Seat),
if(id%2 = 0,id-1,id+1),# if not the last id
if(id % 2 = 0,id-1,id)) # if we are on the last id
as id,student from Seat  
order by id