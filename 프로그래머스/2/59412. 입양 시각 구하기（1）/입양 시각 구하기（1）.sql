-- 코드를 입력하세요
SELECT to_number(to_char(DATETIME, 'HH24')) as HOUR, count(*) as COUNT
from ANIMAL_OUTS
where 1=1
and to_number(to_char(DATETIME, 'HH24')) between '09' and '19'
group by to_number(to_char(DATETIME, 'HH24'))
order by HOUR
;