-- 코드를 입력하세요
SELECT ANIMAL_ID, NAME
from ANIMAL_INS
where 1=1
and INTAKE_CONDITION not in ('Aged')
order by ANIMAL_ID
;