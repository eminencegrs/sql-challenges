select top 3
    svc.srvc_name as "additional service",
    svc.min_participants as "minimum participatns"
from
    dbo.additional_service as svc;
