-- https://leetcode.com/problems/recyclable-and-low-fat-products/description/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below
SELECT product_id from Products 
where low_fats = 'Y' AND recyclable = 'Y'