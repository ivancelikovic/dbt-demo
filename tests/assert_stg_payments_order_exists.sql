with

payments as (
    select * from {{ ref('stg_payments') }}
),
orders as (
    select * from {{ ref('stg_orders') }}
),
grouped_payments as (
    select order_id, count(*) as cnt_payments
    from payments
    group by 1
)

select
    a.order_id, b.order_id
from grouped_payments a
left join orders b using (order_id)
where b.order_id is null
