-- https://leetcode.com/problems/employee-bonus/?envType=study-plan-v2&envId=top-sql-50

Select name , bonus 
from Employee LEFT JOIN Bonus #Using left join to get everone from Employee
ON Employee.empid = Bonus.empid 
where bonus < 1000 OR bonus IS NULL

-- Another way
Select name , bonus 
from Employee LEFT JOIN Bonus --Using left join to get everone from Employee
ON Employee.empid = Bonus.empid 
where coalesce(bonus,0) < 1000 --Handles null values