

select e.code, m.name,
       case
            when (e.nav - s.nav) = 0 then 0
            else ((e.nav - s.nav)/s.nav) * 100
        end as MTD
from "FINAL"."DBT"."END_MONTH" e, "FINAL"."DBT"."START_MONTH" s, "FINAL"."DBT"."MUTUAL" m
where e.code = s.code and s.code = m.code