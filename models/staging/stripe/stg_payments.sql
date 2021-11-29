with payments as (
    select 
    ID,
    ORDERID as order_id,
    PAYMENTMETHOD,
    STATUS,
    amount / 100 as AMOUNT,
    CREATED,
    _BATCHED_AT
     from raw.stripe.payment
)
select * from payments