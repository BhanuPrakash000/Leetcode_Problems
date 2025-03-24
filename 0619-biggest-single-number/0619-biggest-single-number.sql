-- group the numbers with count 1 and max of it results in biggest single number
select max(num) as num 
from ( 
    select num
    from mynumbers
    group by num
    having count(*)=1) as single;