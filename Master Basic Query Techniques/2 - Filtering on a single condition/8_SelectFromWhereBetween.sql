-- Find the rows where the price per person is between $75 and $125

select
    srvc_name,
    min_participants,
    per_person_price
from
    dbo.additional_service
where
    per_person_price between 75 and 125;
