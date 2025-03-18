WITH CUSTOMER as(
    select C_CUSTKEY,
    C_NAME,
    C_ADDRESS,
    C_NATIONKEY,
    C_PHONE,
    C_ACCTBAL,
    C_MKTSEGMENT
     from {{source('TPCH_SF1','CUSTOMER')}}
)
select * from CUSTOMER