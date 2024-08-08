-- https://leetcode.com/problems/investments-in-2016/?envType=study-plan-v2&envId=top-sql-50

-- Write your MySQL query statement below
Select round(sum(tiv_2016),2) as tiv_2016 
from Insurance
where tiv_2015 in(
    Select tiv_2015
    from Insurance
    group by tiv_2015
    having count(*) > 1
)
AND (lat,lon) in (
    Select lat,lon
    from Insurance
    group by lat,lon
    having count(*) = 1
)
