# Write your MySQL query statement below
-- groups the customer and check with having clause w.r.t to rows in product table.
select c.customer_id
from customer c
group by c.customer_id
having count(distinct c.product_key) = (select count(*)from product)

