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
