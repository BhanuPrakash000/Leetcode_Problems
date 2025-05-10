# Write your MySQL query statement below
with cte as(
    select turn, person_id, person_name, weight,
    sum(weight) over(order by turn rows between unbounded preceding and current row ) as total_weight
    from queue
    order by turn )

select person_name
from cte 
where total_weight <= 1000 
order by total_weight desc
limit 1;