-- 코드를 입력하세요
SELECT CAR_ID, to_char(round(avg(END_DATE - START_DATE + 1), 1), 'FM99990.0') as AVERAGE_DURATION
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
where 1=1
group by CAR_ID
having avg(END_DATE - START_DATE + 1) >= 7
order by round(avg(END_DATE - START_DATE + 1), 1) desc, CAR_ID desc
;