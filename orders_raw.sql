use catalog identifier({{thhart_catalog}});
use schema identifier({{thhart_schema}});

create or replace table orders_raw
as 
select 
  customer_id
  , order_number
  , from_unixtime(order_datetime::bigint) as order_datetime
from read_files(
  '/databricks-datasets/retail-org/sales_orders'
  , format => 'json'
  , header => true
)