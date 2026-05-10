-- 코드를 입력하세요
SELECT trunc(price / 10000) * 10000 as PRICE_GROUP, count(*) as PRODUCTS
from PRODUCT
group by trunc(price / 10000) * 10000
order by PRICE_GROUP
;