# Write your MySQL query statement below
-- for triangle sum of any two sides must be greater than third side
select x,y,z,
case when x+y>z and y+z>x and x+z>y then 'Yes'
    else 'No' end as triangle
from triangle;