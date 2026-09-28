-- Bài tập 1: Weather Observation Station 3
SELECT DISTINCT city FROM STATION
WHERE id%2=0
-- Bài tập 2: Weather Observation Station 4
SELECT COUNT(CITY) - COUNT(DISTINCT CITY) AS difference FROM STATION
-- Bài tập 3: (save for later)
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
-- Bài tập 6: Average Post Hiatus
SELECT user_id, 
DATE (MAX(post_date))-DATE (MIN(post_date)) AS days_between
FROM posts
WHERE post_date>='2021-01-01' AND post_date<'2022-01-01'
GROUP BY user_id
HAVING COUNT (post_id)>=2
-- Bài tập 7: Cards Issued Difference
SELECT card_name,
MAX(issued_amount)-MIN(issued_amount) AS difference
FROM monthly_cards_issued
GROUP BY card_name
ORDER BY MAX(issued_amount)-MIN(issued_amount) DESC
-- Bài tập 8: Pharmacy Analytics – Losses
SELECT manufacturer,
COUNT (drug) AS drug_count, 
ABS(SUM(cogs-total_sales)) AS total_loss
FROM pharmacy_sales
WHERE (total_sales)<(cogs)
GROUP BY manufacturer
ORDER BY ABS(SUM(cogs-total_sales)) DESC
-- Bài tập 9: Not Boring Movies
SELECT * FROM cinema
WHERE ID%2=1 AND description <> 'boring'
ORDER BY rating DESC
-- Bài tập 10: Unique Subjects Per Teacher
SELECT teacher_id, 
COUNT (DISTINCT(subject_id)) AS cnt
FROM teacher
GROUP BY teacher_id
-- Bài tập 11: Followers Count
SELECT user_id,
COUNT(follower_id) AS followers_count
FROM followers
GROUP BY user_id
ORDER BY user_id ASC
-- Bài tập 12: Popular Classes
SELECT class 
FROM courses
GROUP BY class
HAVING COUNT(DISTINCT(student)) >= 5
