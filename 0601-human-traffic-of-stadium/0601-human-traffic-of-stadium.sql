# Write your MySQL query statement below
#in cte the rnk returns same if the ids are in consecutive 
# then we group by row number with rows more than 3 order by visit date in ascending order
with cte as (
select *, id-row_number() over(order by id) as rnk
from stadium
where people >=100)

select id,visit_date,people
from cte
where rnk in 
(select rnk from cte 
group by rnk
having count(*) >=3)
order by visit_date;