with source as (
    select * from {{ source('raw', 'raw_orders') }}
),

renamed as (
    select
        id as order_id,
        customer as customer_name,
        ordered_at as order_timestamp,
        store_id,
        subtotal,
        tax_paid,
        order_total
    from source
)

select * from renamed
