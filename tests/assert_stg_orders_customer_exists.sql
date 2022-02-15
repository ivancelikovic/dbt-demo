with

customers as (
    select * from {{ ref('stg_customers') }}
),
orders as (
    select * from {{ ref('stg_orders') }}
),
grouped_orders as (
    select customer_id, count(*) as cnt_customers
    from orders
    group by 1
)

select
    a.customer_id, b.customer_id
from grouped_orders a
left join customers b using (customer_id)
where b.customer_id is null
