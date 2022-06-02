

select f.category as category, y.mtd as MTD
from "FINAL"."DBT"."MTD" y, "FINAL"."DBT"."MUTUAL" m, "FINAL"."DBT"."FUND" f
where y.code = m.code and m.category_id = f.id and f.category like ('%Liquid%')