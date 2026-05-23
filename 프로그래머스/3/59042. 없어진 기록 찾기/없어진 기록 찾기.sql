-- 코드를 입력하세요
SELECT a.ANIMAL_ID, a.NAME
from ANIMAL_OUTS a
left join ANIMAL_INS b
on a.ANIMAL_ID = b.ANIMAL_ID 
where 1=1
and b.ANIMAL_ID is null
order by a.ANIMAL_ID;