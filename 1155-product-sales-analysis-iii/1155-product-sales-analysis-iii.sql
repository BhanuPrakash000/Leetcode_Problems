# Write your MySQL query statement below
-- here grouped the product_id with min year out of it
select product_id, year as first_year, quantity,price
from sales
where (product_id,year) in (
    select product_id, min(year) as min_year 
    from sales
    group by product_id
)