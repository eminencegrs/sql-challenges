select
    srvc_name,
    min_participants,
    per_person_price
from
    dbo.additional_service
where
    srvc_name in (
        'Gift Basket Delivery - Small',
        'Gift Basket Delivery - Medium',
        'Gift Basket Delivery - Large',
        'Gift Basket Delivery - Extra Large');
