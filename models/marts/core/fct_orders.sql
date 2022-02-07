with payments as (

    select * from {{ ref('stg_payments') }}
),

orders as (

    select * from {{ ref('stg_orders') }}
),

final as (

    select
        orders.order_id,
        orders.customer_id,
        coalesce(payments.amount, 0) as amount

    from orders

    left join payments using (order_id, customer_id)

)

select * from final
