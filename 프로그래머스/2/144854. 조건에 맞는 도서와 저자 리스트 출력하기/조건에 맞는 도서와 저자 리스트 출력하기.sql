-- 코드를 입력하세요
SELECT BOOK_ID, AUTHOR_NAME, to_char(PUBLISHED_DATE, 'YYYY-MM-DD')
from BOOK a, AUTHOR b
where 1=1
and a.AUTHOR_ID = b.AUTHOR_ID
and CATEGORY = '경제'
order by PUBLISHED_DATE
;