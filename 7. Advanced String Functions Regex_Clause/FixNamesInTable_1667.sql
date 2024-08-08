-- https://leetcode.com/problems/fix-names-in-a-table/?envType=study-plan-v2&envId=top-sql-50

-- Write your MySQL query statement below
Select user_id , concat(upper(substr(name,1,1)) , lower(substr(name,2, length(name)))) as name
from Users
order by user_id
