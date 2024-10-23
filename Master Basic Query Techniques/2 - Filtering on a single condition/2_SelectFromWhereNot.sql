select
    srvc_name,
    min_participants,
    per_person_price
from
    dbo.additional_service
where
    srvc_name <> 'Catering - Lunch';
