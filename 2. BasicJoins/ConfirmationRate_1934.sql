-- https://leetcode.com/problems/confirmation-rate/?envType=study-plan-v2&envId=top-sql-50

-- Write your MySQL query statement below

Select  s.user_id , ROUND(AVG(if(action = "confirmed",1,0)),2)
as confirmation_rate 
from Signups s left join Confirmations c
on s.user_id = c.user_id
group by s.user_id