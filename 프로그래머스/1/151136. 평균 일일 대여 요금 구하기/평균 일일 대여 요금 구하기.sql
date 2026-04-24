-- 코드를 입력하세요
SELECT round(avg(DAILY_FEE)) as AVERAGE_FEE
from CAR_RENTAL_COMPANY_CAR
where 1=1
and CAR_TYPE = 'SUV'
;
