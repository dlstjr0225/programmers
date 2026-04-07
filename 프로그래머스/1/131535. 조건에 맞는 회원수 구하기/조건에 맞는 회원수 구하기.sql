-- 코드를 입력하세요
SELECT count(*) from USER_INFO
where 1=1
and JOINED >= date '2021-01-01'
and JOINED < date '2022-01-01'
and AGE between 20 and 29
;