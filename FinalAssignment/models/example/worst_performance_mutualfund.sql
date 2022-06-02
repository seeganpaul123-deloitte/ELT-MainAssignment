{{ config(materialized = 'table') }}

select top 1 * from "FINAL"."DBT"."INCEPTION"
order by cagr asc
