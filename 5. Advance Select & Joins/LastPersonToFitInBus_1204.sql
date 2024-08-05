-- https://leetcode.com/problems/last-person-to-fit-in-the-bus/?envType=study-plan-v2&envId=top-sql-50

-- Write your MySQL query statement below
Select a.person_name 
from Queue a Join Queue b
on a.turn >= b.turn
group by a.turn
having SUM(b.Weight) <= 1000
order by a.turn desc
limit 1