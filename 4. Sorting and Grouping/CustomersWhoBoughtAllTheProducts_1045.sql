-- https://leetcode.com/problems/customers-who-bought-all-products/?envType=study-plan-v2&envId=top-sql-50

-- Write your MySQL query statement below
Select customer_id from Customer 
group by customer_id
having count(distinct(product_key)) = (Select count(product_key) from Product)
