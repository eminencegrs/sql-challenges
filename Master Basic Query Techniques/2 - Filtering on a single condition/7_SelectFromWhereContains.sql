-- Find the rows where the service name contains 'Party'

select
    srvc_name,
    min_participants,
    per_person_price
from
    dbo.additional_service
where
    srvc_name LIKE '%Party%'
