SELECT COUNT(*) AS FISH_COUNT
FROM FISH_INFO JOIN FISH_NAME_INFO USING(FISH_TYPE)
WHERE FISH_NAME IN ('BASS','SNAPPER')