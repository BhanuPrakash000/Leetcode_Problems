# Write your MySQL query statement below
with cte as (
    select e1.name as name
    from employee e1
    left join employee e2
    on e1.id = e2.managerid
    group by e2.managerid
    HAVING count(e2.managerid)>=5
)
select name
from cte
