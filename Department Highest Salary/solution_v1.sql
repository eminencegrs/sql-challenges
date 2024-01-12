select
    d.name as Department,
    e.name as Employee,
    e.salary as Salary
from Employee e
join Department d ON e.departmentId = d.id
where exists (
    select 1
    from Employee e2
    where e2.departmentId = e.departmentId
    group by e2.departmentId
    having max(e2.salary) = e.salary);