-- 코드를 입력하세요
SELECT DR_NAME, DR_ID, MCDP_CD, to_char(HIRE_YMD, 'YYYY-MM-DD')
from DOCTOR
where 1=1
and MCDP_CD in ('CS', 'GS')
order by HIRE_YMD desc, DR_NAME
;