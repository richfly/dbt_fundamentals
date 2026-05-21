select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status  as payment_status,
    amount as payment_amount,
    -- amount is stored in centes, conver it to dollars
    {{ cents_to_dollars("amount") }} as amount,
    created as created_at
from {{ source('stripe', 'payment') }}