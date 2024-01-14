select e2.unique_id, e1.name
from EmployeeUNI e2
full outer join Employees e1
on e2.id = e1.id
where e2.unique_id is null or e2.id = e1.id;