# Write your MySQL query statement below
-- Here this query find the date over augest 16 as set the price to 10
select product_id, 10 as price
from products
group by 1
having min(change_date)> '2019-08-16'

union all
-- here the subquery find the product_id and last changed date until augest 16
-- and then union all as we are using group by in queries there won't be any duplicates. So we can use the union all instead of union.
select product_id, new_price as price
from products
where (product_id,change_date) in(
    select product_id, max(change_date)
    from products
    where change_date <= '2019-08-16'
    group by 1
)
