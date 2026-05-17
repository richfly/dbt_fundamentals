select
    ORDERID as order_id
    , id as customer_id
    , AMOUNT
from stg_stripe__payments