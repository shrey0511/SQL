-- https://leetcode.com/problems/biggest-single-number/?envType=study-plan-v2&envId=top-sql-50

-- Write your MySQL query statement below

# All Single numbers
with cte as
(Select num from MyNumbers group by num having count(num) = 1)

Select case when count(*) > 0 then max(num)
else null end as num
from cte