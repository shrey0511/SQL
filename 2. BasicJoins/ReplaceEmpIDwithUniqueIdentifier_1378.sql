-- https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/?envType=study-plan-v2&envId=top-sql-50

-- Write your MySQL query statement below
Select
    unique_id , name 
from 
    Employees Left Join EmployeeUNI
On 
    Employees.id = EmployeeUNI.id