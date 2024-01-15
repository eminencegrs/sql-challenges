select
    machine_id,
    round(avg(timestamp2 - timestamp1), 3) as 'processing_time'
from (
    select
        machine_id,
        timestamp as timestamp1,
        (
            select min(timestamp)
            from Activity a2
            where
                a2.machine_id = a1.machine_id and
                a2.process_id = a1.process_id and
                a2.timestamp > a1.timestamp
        ) as timestamp2
    from Activity a1
) temp
group by machine_id;