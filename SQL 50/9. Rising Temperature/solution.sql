select w1.id
from Weather w1
where exists (
    select 1
    from Weather w2
    where
        w1.temperature > w2.temperature and
        datediff(day, w2.recordDate, w1.recordDate) = 1
);
