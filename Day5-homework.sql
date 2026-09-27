-- Bài tập 1: Weather Observation Station 3
SELECT DISTINCT city FROM STATION
WHERE id%2=0
-- Bài tập 2: Weather Observation Station 4
SELECT COUNT(CITY) - COUNT(DISTINCT CITY) AS difference FROM STATION
-- Bài tập 3:
-- Bài tập 4: Compressed Mean
SELECT
ROUND(CAST(SUM(item_count * order_occurrences) AS DECIMAL) / SUM(order_occurrences),1) AS mean
FROM items_per_order
-- Bài tập 5: Data Science Skills
SELECT candidate_id
FROM CANDIDATES
WHERE skill IN ('Python', 'Tableau', 'PostgreSQL')
GROUP BY candidate_id
HAVING COUNT (skill) = 3
ORDER BY candidate_id ASC
