select c.name, c.population, c.area
from World c
where c.area >= 3000000 or c.population >= 25000000
order by c.name;