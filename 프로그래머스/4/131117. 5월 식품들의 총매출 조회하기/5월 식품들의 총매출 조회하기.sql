SELECT O.PRODUCT_ID, P.PRODUCT_NAME, P.PRICE*SUM(O.AMOUNT) AS TOTAL_SALES
FROM FOOD_PRODUCT P JOIN FOOD_ORDER O USING(PRODUCT_ID)
WHERE PRODUCE_DATE LIKE '2022-05-%'
GROUP BY O.PRODUCT_ID
ORDER BY TOTAL_SALES DESC, O.PRODUCT_ID ASC