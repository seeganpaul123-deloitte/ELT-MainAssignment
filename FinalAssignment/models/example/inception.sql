{{ config(materialized = 'table') }}

select e.code, m.name, (pow((e.nav/s.nav),1) -1) as CAGR
from "FINAL"."DBT"."ENDDATE" e, "FINAL"."DBT"."STARTDATE" s, "FINAL"."DBT"."MUTUAL" m
where e.code = s.code and s.code = m.code
