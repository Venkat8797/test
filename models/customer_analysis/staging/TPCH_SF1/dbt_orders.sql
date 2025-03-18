with orders as(
    select
    O_ORDERKEY
    O_CUSTKEY,
    O_ORDERSTATUS,
    O_TOTALPRICE,
    O_ORDERDATE,
    O_ORDERPRIORITY,
    O_CLERK,
    O_SHIPPRIORITY
    from {{source('TPCH_SF1','ORDERS')}}
)
select * from orders