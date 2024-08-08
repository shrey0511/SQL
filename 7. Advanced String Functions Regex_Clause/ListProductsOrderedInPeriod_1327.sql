-- https://leetcode.com/problems/list-the-products-ordered-in-a-period/?envType=study-plan-v2&envId=top-sql-50

-- Write your MySQL query statement below
Select p.product_name as product_name , sum(o.unit) as unit from Products p , Orders o
where p.product_id = o.product_id and year(o.order_date)='2020' and month(o.order_date)='02'
group by p.product_id having sum(o.unit)>=100
