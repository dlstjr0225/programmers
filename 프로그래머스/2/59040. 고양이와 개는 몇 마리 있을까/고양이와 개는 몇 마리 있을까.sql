-- 코드를 입력하세요
SELECT ANIMAL_TYPE, count(*)
from ANIMAL_INS
where 1=1
and ANIMAL_TYPE in ('Cat', 'Dog')
group by ANIMAL_TYPE
order by case when ANIMAL_TYPE = 'Cat' then 0 else 1 end
;