-- 코드를 입력하세요
SELECT a.FLAVOR
from FIRST_HALF a, ICECREAM_INFO b
where 1=1
and a.FLAVOR = b.FLAVOR
and b.INGREDIENT_TYPE = 'fruit_based'
and a.TOTAL_ORDER > 3000
order by TOTAL_ORDER desc
;
