-- https://leetcode.com/problems/article-views-i/?envType=study-plan-v2&envId=top-sql-50

-- Write your MySQL query statement below
Select Distinct(author_id) as id from Views where author_id = viewer_id order by id