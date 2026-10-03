-- Bài tập 1: Student Names Sorted by Last Three Characters
SELECT name 
FROM students
WHERE marks > 75
ORDER BY RIGHT (name,3), id
-- Bài tập 2: Fix Names in a Table
SELECT user_id,
CONCAT (UPPER (left(name,1)), lower (right(name, length(name)-1))) as name
FROM users
ORDER by user_id
-- Bài tập 3: Pharmacy Analytics – Formatted Sales
SELECT manufacturer, 
'$'|| ROUND (SUM(total_sales)/1000000,0) || ' ' || 'million' as sale 
FROM pharmacy_sales
GROUP BY manufacturer
ORDER BY SUM(total_sales) DESC, manufacturer ASC
-- Bài tập 4: Average Review Ratings by Month
SELECT 
EXTRACT (month FROM submit_date) as mth,
product_id as "product",
ROUND(AVG(stars),2) as avg_stars
FROM reviews
GROUP BY mth, product_id
ORDER BY mth, product_id 
-- Bài tập 5: Teams Power Users
SELECT sender_id,
COUNT (message_id) as message_count
FROM messages
WHERE EXTRACT (month FROM sent_date)=8
AND EXTRACT (year FROM sent_date)=2022
GROUP BY sender_id
ORDER BY message_count DESC 
LIMIT 2
-- Bài tập 6: Invalid Tweets
SELECT tweet_id
FROM tweets
WHERE LENGTH (content) > 15
-- Bài tập 7: Daily Active Users (30 Days)
SELECT 
DATE(activity_date) AS day,
COUNT(DISTINCT user_id) AS active_users
FROM activity
WHERE activity_date BETWEEN '2019-06-28' AND '2019-07-27'
GROUP BY DATE(activity_date)
-- Bài tập 8: Number of Hires During Time Period
SELECT 
COUNT (id) AS hires_count
FROM uber_employees
WHERE DATE (hire_date) BETWEEN '2015-01-01' AND '2015-12-31'
-- Bài tập 9: Position of Letter 'a'
SELECT
POSITION ('a' IN first_name) 
FROM worker
WHERE first_name = 'Amitah'
-- Bài tập 10: Macedonian Vintages
SELECT id,
SUBSTRING (title, length(winery)+2,4) as "year"
FROM winemag_p2
WHERE country = 'Macedonia'
