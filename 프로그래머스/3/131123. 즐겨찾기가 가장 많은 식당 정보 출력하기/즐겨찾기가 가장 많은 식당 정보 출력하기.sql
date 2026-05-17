-- 코드를 입력하세요
select FOOD_TYPE, REST_ID, REST_NAME, FAVORITES
from REST_INFO a
where 1=1
and FAVORITES = (
    select MAX(FAVORITES)
    from REST_INFO b
    where 1=1
    and a.FOOD_TYPE = b.FOOD_TYPE
)
order by FOOD_TYPE desc;