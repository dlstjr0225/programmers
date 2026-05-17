-- 코드를 입력하세요
SELECT a.USER_ID, a.NICKNAME, 
        a.CITY || ' ' || a.STREET_ADDRESS1 || ' ' || a.STREET_ADDRESS2 as 전체주소,
        SUBSTR(a.TLNO, 1, 3) || '-' ||
        SUBSTR(a.TLNO, 4, 4) || '-' ||
        SUBSTR(a.TLNO, 8, 4) as 전화번호
from USED_GOODS_USER a
join USED_GOODS_BOARD b
  on a.USER_ID = b.WRITER_ID
group by a.USER_ID,
         a.NICKNAME,
         a.CITY,
         a.STREET_ADDRESS1,
         a.STREET_ADDRESS2,
         a.TLNO
having COUNT(*) >= 3
order by a.USER_ID desc;