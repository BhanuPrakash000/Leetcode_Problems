# Write your MySQL query statement below
select e.name,b.bonus
from employee as e left join bonus as b on b.empid=e.empid
where b.bonus is NULL or b.bonus<1000