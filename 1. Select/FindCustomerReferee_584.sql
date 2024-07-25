-- https://leetcode.com/problems/find-customer-referee/?envType=study-plan-v2&envId=top-sql-50

-- Write your sql query here

Select name from Customer where coalesce(referee_id,0) != 2

-- Another way
Select name from Customer where referee_id != 2 OR referee_id is null