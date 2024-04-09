SELECT YEAR(SALES_DATE) AS YEAR, MONTH(SALES_DATE) AS MONTH, GENDER, COUNT(DISTINCT S.USER_ID) AS USERS
FROM USER_INFO U JOIN ONLINE_SALE S USING(USER_ID)
WHERE U.GENDER IS NOT NULL
GROUP BY YEAR(SALES_DATE), MONTH(SALES_DATE), GENDER
ORDER BY YEAR ASC, MONTH ASC, GENDER ASC