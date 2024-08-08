-- https://leetcode.com/problems/friend-requests-ii-who-has-the-most-friends/?envType=study-plan-v2&envId=top-sql-50

-- Write your MySQL query statement below
with base as
(Select requester_id id from RequestAccepted
Union all
Select accepter_id id from RequestAccepted)

Select id , count(*) num from base 
group by id
order by num desc
limit 1