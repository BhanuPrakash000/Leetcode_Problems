# Write your MySQL query statement below
select e2.name as Employee from employee e1
# here the employee e2 is manager table where e1 is employee table.
inner join employee e2
on e1.id = e2.managerid
WHERE
e1.salary < e2.salary;