--https://leetcode.com/problems/user-activity-for-the-past-30-days-i/?envType=study-plan-v2&envId=top-sql-50

--Write your MySQL query statement below
Select activity_date as day, count(distinct(user_id)) as active_users 
from Activity
where activity_date between '2019-06-28' AND '2019-07-27'
group by activity_date

# Another way to write for date
# where activity_date between date_add('2019-07-27', Interval -29 DAY)
# AND '2019-07-27'