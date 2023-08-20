select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,

    -- amount is stored in cents, convert to dollar
    amount/100 as amount,
    created

from {{ source('stripe', 'payment') }}