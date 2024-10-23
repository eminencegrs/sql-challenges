-- Find the rows where the service name does not start with 'Gift Basket Delivery'

select
    srvc_name,
    min_participants,
    per_person_price
from
    dbo.additional_service
where
    srvc_name NOT LIKE 'Gift Basket Delivery%'
