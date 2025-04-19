# Write your MySQL query statement below

select u.user_id AS buyer_id, u.join_date,
    count(o.order_date) AS orders_in_2019
from users u
left join orders o 
on u.user_id = o.buyer_id and o.order_date BETWEEN '2019-01-01' AND '2019-12-31'
group by u.user_id, u.join_date;