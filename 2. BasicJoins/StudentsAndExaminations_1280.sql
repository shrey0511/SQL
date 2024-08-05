-- https://leetcode.com/problems/students-and-examinations/?envType=study-plan-v2&envId=top-sql-50

-- Write your MySQL query statement below
Select s.student_id , s.student_name , sub.subject_name , count(e.student_id) as attended_exams 
from Students s cross join Subjects sub left join Examinations e 
on s.student_id = e.student_id and sub.subject_name = e.subject_name
group by s.student_id , sub.subject_name
order by s.student_id , sub.subject_name