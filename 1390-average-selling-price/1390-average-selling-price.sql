# Write your MySQL query statement below
/* the select statement calculates the average selling price by dividing total 
revenue by total units sold*/

select p.product_id,
case WHEN COALESCE(SUM(s.units), 0) = 0 THEN 0
else round(sum(p.price*s.units)/ sum(s.units),2) end as average_price
from prices as p
left join unitssold as s
on p.product_id = s.product_id and s.purchase_date between p.start_date and p.end_date
group by p.product_id