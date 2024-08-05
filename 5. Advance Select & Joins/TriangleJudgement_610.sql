-- https://leetcode.com/problems/triangle-judgement/?envType=study-plan-v2&envId=top-sql-50

-- Write your MySQL query statement below
Select x , y , z , if(x+y > z AND y+z > x AND x+z > y , "Yes" , "No") as triangle
from Triangle