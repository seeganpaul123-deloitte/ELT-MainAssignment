

select f.category as category, y.ytd as YTD
from "FINAL"."DBT"."YTD" y, "FINAL"."DBT"."MUTUAL" m, "FINAL"."DBT"."FUND" f
where y.code = m.code and m.category_id = f.id and f.category like ('%Liquid%')