with customers as (

    select
        id as customer_id,
        first_name,
        last_name

    from {{ source('ab_devpayconstruct', 'customers') }}

)

select * from customers