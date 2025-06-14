use catalog identifier({{thhart_catalog}});
use schema identifier({{thhart_schema}});

create or replace view orders_daily
as
select 
  order_datetime::date as order_date
  , count(*) as n_orders
from orders_raw
group by order_datetime::date