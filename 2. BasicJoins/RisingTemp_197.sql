-- https://leetcode.com/problems/rising-temperature/description/?envType=study-plan-v2&envId=top-sql-50

Select w2.id from 
Weather w1 JOIN Weather w2 # Self join 
ON DATEDIFF(w1.recordDate , w2.recordDate) = -1
where w2.temperature > w1.temperature 


Select w2.id from 
Weather w1 JOIN Weather w2 # Self join 
ON w1.recordDate - w2.recordDate = -1
where w2.temperature > w1.temperature 