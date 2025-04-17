# Write your MySQL query statement below
-- count the user ids based on the grouping date by 30 day period.
select activity_date as day, count(distinct(user_id)) as active_users
from activity 
group by activity_date
having activity_date between date('2019-07-27') - interval 29 day and '2019-07-27'