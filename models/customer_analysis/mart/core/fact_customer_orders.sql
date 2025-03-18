
with customer as
(
    select * from {{ref('dbt_customer')}}
),
orders as (
    select * from {{ref('dbt_orders')}}
),
final as (
select c.*,
O_ORDERSTATUS,
O_TOTALPRICE,
O_ORDERDATE,
O_ORDERPRIORITY,
O_CLERK,
O_SHIPPRIORITY from 
customer c join orders r
on c.C_CUSTKEY=r.O_CUSTKEY
)
select 
C_CUSTKEY,
c_mktsegment,
O_ORDERSTATUS,
sum(O_TOTALPRICE) as total_order_amt 
from final
group by all