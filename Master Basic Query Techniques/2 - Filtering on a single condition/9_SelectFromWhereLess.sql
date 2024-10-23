-- Find the rows where the price per person is less than $85

select
    srvc_name,
    min_participants,
    per_person_price
from
    dbo.additional_service
where
    per_person_price < 85;
