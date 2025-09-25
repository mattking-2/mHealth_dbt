SELECT 
    req.user,
    req.campaign,
    req.date,
    req.method,
    req.endpoint,
    dscr.description
FROM {{ source('mhealth_analytics', 'mHealth_req') }} AS req
LEFT JOIN {{ source('mhealth_analytics', 'endpoint_descriptions') }} AS dscr
    ON req.method = dscr.method
    AND req.endpoint = dscr.endpoint