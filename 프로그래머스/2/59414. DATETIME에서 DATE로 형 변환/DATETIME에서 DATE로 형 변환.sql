-- 코드를 입력하세요
SELECT ANIMAL_ID, NAME, to_char(DATETIME, 'YYYY-MM-DD')
from ANIMAL_INS
order by ANIMAL_ID
;