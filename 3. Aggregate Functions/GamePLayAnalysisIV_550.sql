-- https://leetcode.com/problems/game-play-analysis-iv/?envType=study-plan-v2&envId=top-sql-50

-- Write your MySQL query statement below
Select round(count(distinct(y.player_id)) / count(distinct(x.player_id)),2) 
as fraction
from (Select player_id , MIN(event_date) as event_date from Activity 
group by player_id) x left join Activity y
on x.player_id = y.player_id AND DATEDIFF(y.event_date,x.event_date) = 1

