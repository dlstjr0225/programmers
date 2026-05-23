-- 코드를 입력하세요
SELECT CATEGORY, PRICE as MAX_PRICE, PRODUCT_NAME
from FOOD_PRODUCT
where 1=1
and (CATEGORY, PRICE) in (select CATEGORY, max(PRICE) 
                          from FOOD_PRODUCT
                          where 1=1
                         and CATEGORY  in ('과자', '국', '김치', '식용유')
                         group by CATEGORY)
                         order by PRICE desc;