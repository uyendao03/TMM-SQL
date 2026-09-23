-- Bài tập 1: Revising the SELECT Query
SELECT name FROM CITY
WHERE population > 120000
AND countrycode='USA'
-- Bài tập 2: Japanese Cities Attributes
SELECT * FROM CITY
WHERE COUNTRYCODE = 'JPN'
-- Bài tập 3: Weather Observation Station 1
SELECT CITY, STATE FROM STATION
-- Bài tập 4: Weather Observation Station 6
SELECT DISTINCT CITY FROM STATION
WHERE CITY LIKE 'a%' OR CITY LIKE 'e%' OR CITY LIKE 'i%' OR CITY LIKE 'o%' OR CITY LIKE 'u%' 
OR CITY LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%'
-- Bài tập 5: Weather Observation Station 7
SELECT DISTINCT CITY FROM STATION
WHERE CITY LIKE '%a' OR CITY LIKE '%e' OR CITY LIKE '%i' OR CITY LIKE '%o' OR CITY LIKE '%u' 
-- Bài tập 6: Weather Observation Station 9
SELECT DISTINCT CITY FROM STATION
WHERE NOT (CITY LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE  'U%') 
-- Bài tập 7: Name of Employees
SELECT name FROM Employee
ORDER BY name ASC
-- Bài tập 8: Salary of Employees
SELECT name FROM Employee
WHERE salary >2000 AND months <10
ORDER BY employee_id ASC
-- Bài tập 9: Recyclable and Low Fat Products
SELECT product_id FROM products
WHERE low_fats = 'Y' AND recyclable ='Y'
-- Bài tập 10: Find Customer Referee
SELECT name FROM customer
WHERE (referee_id != 2 OR referee_id IS NULL)
-- Bài tập 11: Big Countries
SELECT name, population, area FROM world
WHERE area >=3000000 OR population >=25000000
-- Bài tập 12: Article Views
SELECT DISTINCT author_id AS id FROM views
WHERE author_id = viewer_id
-- Bài tập 13: Unfinished parts
SELECT part, assembly_step FROM parts_assembly
WHERE finish_date IS NULL
-- Bài tập 14: Lyft Driver Wages
SELECT * FROM lyft_drivers
WHERE yearly_salary <=30000 OR yearly_salary >=70000
-- Bài tập 15: Uber Advertising Channel
SELECT channel FROM uber_advertising
WHERE money_spent >100000 AND year = 2019
