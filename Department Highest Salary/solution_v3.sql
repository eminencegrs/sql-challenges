select 
    d.name AS Department,
    e.name AS Employee,
    e.salary AS Salary
from Department d
cross apply (
    select name, salary
    from Employee e
    where e.departmentId = d.id
) e
where e.salary = (
    select max(salary)
    from Employee
    where departmentId = d.id);