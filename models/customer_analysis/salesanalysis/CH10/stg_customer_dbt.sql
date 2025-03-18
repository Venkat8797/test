
with cust as (
    select * from {{source('SS','CUSTOMER')}}
)
select CUSTOMER_ID,customer_name,email,phone,concat_with_3_var(ADDRESS,CITY,COUNTRY) from cust