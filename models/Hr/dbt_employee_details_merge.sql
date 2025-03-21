{{
    config(
        materialized='incremental',
        transient =false,
        unique_key= 'ID'

    )
}}


with cte as (
select * from {{ source('check', 'employee_details') }}
)

select * from cte
{% if is_incremental() %}

where received_at> (select max(received_at) from {{this}})
    
{% endif %}
