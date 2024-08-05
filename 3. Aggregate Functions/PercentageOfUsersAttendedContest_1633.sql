-- https://leetcode.com/problems/percentage-of-users-attended-a-contest/?envType=study-plan-v2&envId=top-sql-50

-- Write your MySQL query statement below
Select contest_id , ROUND(COUNT(DISTINCT(user_id))*100/(Select count(distinct(user_id)) from Users),2) as percentage
from Register 
group by contest_id
order by percentage desc , contest_id asc