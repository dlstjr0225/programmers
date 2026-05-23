-- 코드를 입력하세요
SELECT extract(month from START_DATE) as month, 
CAR_ID, count(*) as RECORDS
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
where 1=1
and START_DATE >= date '2022-08-01'
and START_DATE < date '2022-11-01'
and CAR_ID in (select CAR_ID from CAR_RENTAL_COMPANY_RENTAL_HISTORY
              where 1=1
              and START_DATE >= date '2022-08-01'
              and START_DATE < date '2022-11-01'
              group by CAR_ID
              having count(*) >= 5)
group by extract(month from START_DATE), CAR_ID
order by month, CAR_ID desc;