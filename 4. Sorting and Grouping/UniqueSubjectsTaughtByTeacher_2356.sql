-- https://leetcode.com/problems/number-of-unique-subjects-taught-by-each-teacher/?envType=study-plan-v2&envId=top-sql-50

-- Write your MySQL query statement below
Select teacher_id , COUNT(DISTINCT(subject_id)) as cnt from Teacher
group by teacher_id