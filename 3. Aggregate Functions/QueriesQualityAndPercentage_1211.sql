-- https://leetcode.com/problems/queries-quality-and-percentage/?envType=study-plan-v2&envId=top-sql-50

-- Write your MySQL query statement below
Select query_name , round(avg(rating/position),2) as quality, 
round((sum(case when rating < 3 then 1 else 0 end)/ count(*))*100,2) as poor_query_percentage
from Queries where query_name is not null
group by query_name