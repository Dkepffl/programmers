SELECT B.WRITER_ID, U.NICKNAME, CONCAT(CITY,' ',STREET_ADDRESS1,' ',STREET_ADDRESS2) AS 전체주소,
       CONCAT(SUBSTR(TLNO,1,3),'-',SUBSTR(TLNO,4,4),'-',SUBSTR(TLNO,8,4)) AS 전화번호
FROM USED_GOODS_BOARD B JOIN USED_GOODS_USER U ON B.WRITER_ID=U.USER_ID
GROUP BY B.WRITER_ID
HAVING COUNT(B.BOARD_ID)>=3
ORDER BY B.WRITER_ID DESC