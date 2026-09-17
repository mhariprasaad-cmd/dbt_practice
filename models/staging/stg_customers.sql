select
    CUSTOMER_ID,
    FIRST_NAME,
    LAST_NAME,
    {{ concat_name('first_name', 'last_name') }} AS CUSTOMER_NAME,
    EMAIL,
    PHONE,
    CITY,
    STATE,
    COUNTRY,
    SIGNUP_DATE,
    SEGMENT
from {{ source('raw', 'customers') }}