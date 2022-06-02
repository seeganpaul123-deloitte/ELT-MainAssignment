

with end_date as (
with max_date as(
 select code, max(n1.nav_date) as date
from "FINAL"."DBT"."NAV" n1
group by n1.code )
select n.code, n.nav, n.nav_date
from "FINAL"."DBT"."NAV" n, max_date m
where n.code = m.code and n.nav_date = m.date
)
select * from end_date