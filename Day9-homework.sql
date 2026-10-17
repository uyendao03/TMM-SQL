-- Bài 1: Laptop vs Mobile Viewership
SELECT
SUM (CASE
  WHEN device_type = 'laptop' THEN 1
  ELSE 0
END) AS laptop_views, 
SUM (CASE
  WHEN device_type IN ('tablet', 'phone') THEN 1
  ELSE 0
END) AS mobile_views
FROM viewership
-- Bài tập 2: Triangle Judgement
SELECT
    x,
    y,
    z,
    CASE
        WHEN x + y > z AND x + z > y AND y + z > x THEN 'Yes'
        ELSE 'No'
    END AS triangle
FROM triangle;
-- Bài tập 3: Uncategorised Calls Percentage
SELECT
    ROUND(
        100 * COUNT(CASE WHEN call_category IS NULL OR call_category = 'n/a' THEN 1 END)
        / COUNT(*),
        1
    ) AS uncategorised_call_pct
FROM callers;
-- Bài tập 4: Find Customer Referee
SELECT name
FROM customer
WHERE referee_id <> 2 OR referee_id IS NULL;
-- Bài tập 5: Titanic Survivors by Class
SELECT
    pclass,
    SUM(CASE WHEN survived = 1 THEN 1 ELSE 0 END) AS survivors,
    SUM(CASE WHEN survived = 0 THEN 1 ELSE 0 END) AS non_survivors
FROM titanic
GROUP BY pclass
ORDER BY pclass;
