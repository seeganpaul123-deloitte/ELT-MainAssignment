

      create or replace transient table Final.dbt.best_performing_mutualfund  as
      (

select top 1 * from "FINAL"."DBT"."INCEPTION"
order by cagr desc
      );
    