-- 코드를 입력하세요
SELECT b.USER_ID, b.NICKNAME, sum(a.PRICE) as TOTAL_SALES
from USED_GOODS_BOARD a, USED_GOODS_USER b
where 1=1
and a.WRITER_ID = b.USER_ID
and STATUS = 'DONE'
group by b.USER_ID, b.NICKNAME
having sum(a.PRICE) >= 700000
order by TOTAL_SALES
;