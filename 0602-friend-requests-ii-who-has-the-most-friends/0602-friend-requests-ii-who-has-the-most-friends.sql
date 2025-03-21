# Write your MySQL query statement below
with cte as(
select requester_id as id
from RequestAccepted 
union all
select accepter_id
from requestaccepted)

-- the union all combines the two columns into one
select id , count(*) as num
from cte
group by id
order by count(*) desc
limit 1