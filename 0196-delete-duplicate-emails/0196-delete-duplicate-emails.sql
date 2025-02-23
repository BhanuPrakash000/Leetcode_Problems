# Write your MySQL query statement below

#the inner query select the minimum id from group of emails 
#And then the outer query deletes the rows other than minimum ids
delete from person 
where id not in (
    select min_id
    from (select min(id) as min_id from person
            group by email ) as temp 
)