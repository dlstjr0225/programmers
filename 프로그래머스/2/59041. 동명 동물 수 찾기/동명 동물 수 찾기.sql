-- 코드를 입력하세요
SELECT NAME, count(NAME) as COUNT
from ANIMAL_INS
where 1=1
and NAME is not null
group by NAME
having COUNT(NAME) >= 2
order by NAME
;