-- Find the rows where the service name starts with 'Gift Basket Delivery'

select
    srvc_name,
    min_participants,
    per_person_price
from
    dbo.additional_service
where
    srvc_name LIKE 'Gift Basket Delivery%'
