{{ config(materialized= 'table') }}

with customers_cte as (
    select * from {{ source("SNOWFLAKE_SAMPLE_DATA", "CUSTOMER") }}
)
select * from customers_cte