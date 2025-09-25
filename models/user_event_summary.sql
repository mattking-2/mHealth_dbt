with base as (
    select
        req.user,
        req.campaign,
        req.method,
        req.endpoint,
        dscr.description
    from {{ source('mhealth_analytics', 'mHealth_req') }} as req
    left join {{ ref('endpoint_descriptions') }} as dscr
        on req.method = dscr.method
        and req.endpoint = dscr.endpoint
)

select
    user,
    campaign,
    method,
    description,
    count(*) as total_requests
from base
group by user, campaign, method, description
