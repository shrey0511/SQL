-- https://leetcode.com/problems/average-selling-price/?envType=study-plan-v2&envId=top-sql-50

-- Write your MySQL query statement below
Select p.product_id , ifnull(ROUND(SUM(p.price * u.units)/SUM(u.units),2),0) as average_price 
from Prices p left join UnitsSold u 
on p.product_id = u.product_id 
and u.purchase_date between start_date AND end_date
group by p.product_id