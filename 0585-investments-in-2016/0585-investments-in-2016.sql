# Write your MySQL query statement below
-- the first condition in where clause find elements with same tiv_2015
-- second one filters which has distinct one under same tiv_2015
select round(sum(tiv_2016),2) as tiv_2016
from insurance
where tiv_2015 in (
    select tiv_2015 
    from insurance 
    group by tiv_2015
    having count(*)>1
) and (lat,lon) in(
    select lat,lon
    from insurance
    group by lat,lon
    having count(*) = 1
)