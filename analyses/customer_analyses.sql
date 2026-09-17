select
    c.CUSTOMER_ID,
    c.CUSTOMER_NAME,
    s.CATEGORY
From {{ref('stg_customers')}} c
INNER JOIN {{ref('segment_category')}} s
ON c.SEGMENT = s.SEGMENT
Where s.CATEGORY=4
