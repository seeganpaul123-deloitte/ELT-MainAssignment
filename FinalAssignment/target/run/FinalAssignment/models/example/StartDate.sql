

      create or replace transient table Final.dbt.StartDate  as
      (


with start_date as(
with min_date as(
select code, min(n1.nav_date) as date
from "FINAL"."DBT"."NAV" n1
where date_part(year, n1.nav_date) = '2019'
group by n1.code)
select n.code, n.nav, n.nav_date
from "FINAL"."DBT"."NAV" n, min_date m
where n.code = m.code and n.nav_date = m.date
)
select * from start_date
      );
    