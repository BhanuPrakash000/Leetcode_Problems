# Write your MySQL query statement below
#from this cte we will rank the salaries in order wrt to departmentid
with cte as (
    select department.id,department.name as Department, employee.name as Employee, employee.salary as Salary,
     dense_rank() over(partition by department.id order by employee.salary desc) as rnk
    from employee
    inner join department 
    on employee.departmentId = department.id
)
select Department,Employee,Salary
from cte
where rnk<=3;