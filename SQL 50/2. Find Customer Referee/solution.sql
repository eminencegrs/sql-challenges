select c.name
from Customer c
where referee_id IS NULL OR referee_id != 2;