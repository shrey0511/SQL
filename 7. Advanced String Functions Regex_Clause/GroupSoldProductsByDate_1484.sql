-- https://leetcode.com/problems/group-sold-products-by-the-date/?envType=study-plan-v2&envId=top-sql-50

-- Write your MySQL query statement below
Select sell_date , count(distinct(product)) as num_sold , 
group_concat(distinct product order by product separator ',') as products
from Activities
group by sell_date
order by sell_date