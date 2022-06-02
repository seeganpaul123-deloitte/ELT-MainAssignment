

      create or replace transient table Final.dbt.worst_performance_mutualfund  as
      (

select top 1 * from "FINAL"."DBT"."INCEPTION"
order by cagr asc
      );
    