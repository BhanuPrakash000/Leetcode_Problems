# Write your MySQL query statement below
-- when id is even then lag takes the after element and coalesce replace the if null appear 
-- in our case null appear at last case of id.
select id,
 case when id %2=0 then lag(student) over (order by id) 
 else coalesce(lead(student) over (order by id),student) end as student
 from seat;