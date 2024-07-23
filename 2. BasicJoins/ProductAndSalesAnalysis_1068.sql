-- https://leetcode.com/problems/product-sales-analysis-i/description/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below
Select product_name , year , price 
from Sales , Product
where Sales.product_id = Product.product_id

-- Another way
Select product_name , year , price 
from Sales JOIN Product
ON Sales.product_id = Product.product_id