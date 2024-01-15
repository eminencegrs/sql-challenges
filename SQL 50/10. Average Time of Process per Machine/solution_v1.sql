-- PLEASE, PAY ATTENTION!
-- LeetCode returns a runtime error:
-- [42000] [Microsoft] [ODBC Driver 17 for SQL Server] [SQL Server]
-- Column 'Activity.timestamp' is invalid in the select list because 
-- it is not contained in either an aggregate function or the GROUP BY clause.
-- (8120) (SQLExecDirectW)

select
    a1.machine_id,
    a1.timestamp as 'start',
    a2.timestamp as 'end',
    round(avg(a2.timestamp - a1.timestamp), 3) as 'processing_time'
from Activity a1
join Activity a2 on
    a1.process_id = a2.process_id and
    a1.machine_id = a2.machine_id and
    a1.timestamp < a2.timestamp
group by a1.machine_id;