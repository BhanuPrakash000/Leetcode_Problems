# Write your MySQL query statement below
#here we will get the department wise max salary
with max_salary as(
    select departmentId, max(salary) as salary_dep from employee group by departmentId
)
# here we will select the employee name with corresponding to cte.
select department.name as Department, employee.name as Employee, employee.salary as Salary
from employee
join department
on employee.departmentId=department.id
join max_salary
on employee.departmentId = max_salary.departmentId 
and employee.salary = max_salary.salary_dep;
