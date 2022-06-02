{{ config(materialized = 'table') }}

select e.code, m.name, ((e.nav - s.nav)/s.nav)*100 as YTD
from "FINAL"."DBT"."ENDDATE" e, "FINAL"."DBT"."STARTDATE" s, "FINAL"."DBT"."MUTUAL" m
where e.code = s.code and s.code = m.code
