# Write your MySQL query statement below
-- The null is considered to be the root or the starting and the remaining connected to id are inner
-- and rest of it are leaf nodes.
select id,
case when p_id is null then 'Root'
    when id in(select p_id from tree) then 'Inner'
    else 'Leaf'
    end as type
from tree