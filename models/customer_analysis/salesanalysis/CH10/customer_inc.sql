{{config( materialized = 'incremental' )}}

with customer as (
    select * from {{ref('stg_customer_dbt')}}
    {% if is_incremental() %}

    where CUSTOMER_ID >(select max(CUSTOMER_ID) from {{this}})
    {% endif %}
)

select * from customer