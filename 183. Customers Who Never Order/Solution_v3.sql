select c.name as Customers
from Customers c
where id not in (select customerId from Orders);
