select p.product_name, s.year, s.price
from Sales s
left outer join Product p
on p.product_id = s.product_id;
