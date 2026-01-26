-- Task 1

-- Enable readable output format
.mode columns
.headers on

-- Instructions for students:
-- 1. Open SQLite in terminal: sqlite3 countries.db
-- 2. Load this script: .read task1.sql
-- 3. Exit SQLite: .exit


-- write your sql code here

SELECT * from countries;
-- 1. Retrieve all data from the countries table
SELECT * FROM countries;

-- 2. Select only the Country and Population columns
SELECT Country, Population FROM countries;

-- 3. Find all country names in Europe
SELECT Country FROM countries WHERE Continent = 'Europe';

-- 4. Find all countries with a population greater than 100 million
SELECT Country FROM countries WHERE Population > 100000000;

-- 5. Find countries in Asia with a GDP per capita greater than 20,000
SELECT Country FROM countries WHERE Continent = 'Asia' AND GDP_per_capita > 20000;

-- 6. Find all countries where the literacy rate is below 70%
SELECT Country FROM countries WHERE Literacy_rate < 70;

-- 7. Find all countries with a coastline ratio of exactly 0 (landlocked countries)
SELECT Country FROM countries WHERE Coastline_ratio = 0;

-- 8. Find countries with names starting with 'A'
SELECT Country FROM countries WHERE Country LIKE 'A%';

-- 9. Find countries with "United" in their name
SELECT Country FROM countries WHERE Country LIKE '%United%';

-- 10. Find countries where birthrate > death rate AND population > 50 million
SELECT Country FROM countries 
WHERE Birthrate > Deathrate AND Population > 50000000;