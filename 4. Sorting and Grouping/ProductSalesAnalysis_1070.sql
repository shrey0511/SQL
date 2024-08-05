-- https://leetcode.com/problems/product-sales-analysis-iii/?envType=study-plan-v2&envId=top-sql-50

-- Write your MySQL query statement below
Select product_id , year as first_year , quantity , price 
from Sales 
where (product_id , year) IN

(Select product_id , MIN(year) from Sales group by product_id)