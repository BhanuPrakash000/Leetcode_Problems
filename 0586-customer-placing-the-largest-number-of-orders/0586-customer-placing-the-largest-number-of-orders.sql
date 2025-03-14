# Write your MySQL query statement below

-- it groups the customer number and prints highest number of orders. 
select customer_number
from orders
group by customer_number 
order by count(*) desc
limit 1 ;