{{ config(materialized = 'table') }}

select f.category as scheme,
      date_part(Year, nav_date) as Year,
      date_part(Month, nav_date) as Month,
      avg(nav) as Average_Nav,
      avg(repurchase_price) as Avg_Repurchase_price,
      avg(sale_price) as Avg_salePrice
from "FINAL"."DBT"."FUND" f,
      "FINAL"."DBT"."MUTUAL" m,
      "FINAL"."DBT"."NAV" n
where f.id = m.category_id and m.code = n.code
group by f.category, date_part(Year, nav_date), date_part(Month, nav_date)
