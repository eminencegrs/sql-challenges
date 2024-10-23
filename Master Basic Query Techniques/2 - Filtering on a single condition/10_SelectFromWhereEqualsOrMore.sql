-- Find the rows where the price per person is $125 or more

select
    srvc_name,
    min_participants,
    per_person_price
from
    dbo.additional_service
where
    per_person_price >= 125;
