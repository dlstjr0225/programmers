-- 코드를 입력하세요
SELECT BOOK_ID, to_char(PUBLISHED_DATE, 'YYYY-MM-DD')
from BOOK
where 1=1
and CATEGORY = '인문'
and PUBLISHED_DATE >= date '2021-01-01'
and PUBLISHED_DATE <  date '2022-01-01'
order by PUBLISHED_DATE
;