

      create or replace transient table Final.dbt.start_month  as
      (

with start_month as (
with min_month as(
select n1.code, min(n1.nav_date) as date
from "FINAL"."DBT"."NAV" n1
group by n1.code, date_part(year, n1.nav_date), date_part(month, n1.nav_date)
)
select n.code, n.nav, n.nav_date
from "FINAL"."DBT"."NAV" n, min_month m
where n.code = m.code and n.nav_date = m.date
)
select * from start_month
      );
    