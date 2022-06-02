{{ config(materialized = 'table') }}

select f.category as scheme,
        max(n.nav) as Maximun,
        min(n.nav) as Minimun                   
from "FINAL"."DBT"."FUND" f,"FINAL"."DBT"."MUTUAL" m, "FINAL"."DBT"."NAV" n
where f.id = m.category_id and m.code = n.code
group by f.category
