# Write your MySQL query statement below 
# the date sub return the date-1 and the inner query return the first date of player
#by the inner query we can say that the player logged in right next day too.
select round(count(distinct player_id)/(select count(distinct player_id) from activity),2) as fraction
from activity
where (player_id,DATE_SUB(event_date,INTERVAL 1 DAY))
in (select player_id, min(event_date) as first_login 
    from activity group by player_id )