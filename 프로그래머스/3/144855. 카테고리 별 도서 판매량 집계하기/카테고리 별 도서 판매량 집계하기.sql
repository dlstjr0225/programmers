-- 코드를 입력하세요
SELECT a.CATEGORY, sum(SALES) as TOTAL_SALES
from BOOK a, BOOK_SALES b
where 1=1
and a.BOOK_ID = b.BOOK_ID
and to_char(b.SALES_DATE, 'YYYY-MM') = '2022-01'
group by a.CATEGORY
order by a.CATEGORY
;