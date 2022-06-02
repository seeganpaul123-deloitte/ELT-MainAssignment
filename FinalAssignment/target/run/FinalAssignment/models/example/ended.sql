

      create or replace transient table Final.dbt.ended  as
      (

select m.name as MutualFund,
       max(date_part(year, n.nav_date)) as Ended
from "FINAL"."DBT"."MUTUAL" m, "FINAL"."DBT"."NAV" n
where m.code = n.code
group by MutualFund
having Ended = '2019'
      );
    