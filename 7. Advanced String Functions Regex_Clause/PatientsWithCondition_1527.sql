-- https://leetcode.com/problems/patients-with-a-condition/?envType=study-plan-v2&envId=top-sql-50

-- Write your MySQL query statement below
Select * from Patients where conditions like '% DIAB1%' or conditions like 'DIAB1%'
