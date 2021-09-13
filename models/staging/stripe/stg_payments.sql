with payments as (

    select id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    amount / 100 as amount,
    created
    from meltano_dpc.payment
)

select * from payments