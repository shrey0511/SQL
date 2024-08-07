-- https://leetcode.com/problems/count-salary-categories/?envType=study-plan-v2&envId=top-sql-50

-- Write your MySQL query statement below
Select 'Low Salary' as category , SUM(case when income < 20000 then 1 else 0 end) as accounts_count
from Accounts

UNION
Select 'Average Salary' as category , SUM(case when income between 20000 and 50000 then 1 else 0 end) as accounts_count
from Accounts

UNION
Select 'High Salary' as category , SUM(case when income > 50000 then 1 else 0 end) as accounts_count
from Accounts