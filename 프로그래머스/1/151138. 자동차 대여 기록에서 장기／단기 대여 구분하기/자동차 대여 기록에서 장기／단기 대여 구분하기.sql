-- 코드를 입력하세요
SELECT HISTORY_ID, CAR_ID, to_char(START_DATE, 'YYYY-MM-DD'), to_char(END_DATE,'YYYY-MM-DD'),
case when (END_DATE - START_DATE + 1) >= 30 then '장기 대여' else '단기 대여' end RENT_TYPE
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
where 1=1
and START_DATE >= date '2022-09-01'
and START_DATE < date '2022-10-01'
order by HISTORY_ID desc
;