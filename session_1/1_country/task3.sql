-- Task 3

-- Enable readable output format
.mode columns
.headers on

-- Instructions for students:
-- 1. Open SQLite in terminal: sqlite3 countries.db
-- 2. Load this script: .read task3.sql
-- 3. Exit SQLite: .exit


-- write your sql code here

SELECT * from countries;
-- 1. Count the total number of countries in the dataset
SELECT COUNT(*) AS Total_Countries FROM countries;

-- 2. Find how many countries belong to each continent
SELECT Continent, COUNT(*) AS Country_Count 
FROM countries 
GROUP BY Continent;

-- 3. Calculate the total population for each continent
SELECT Continent, SUM(Population) AS Total_Population 
FROM countries 
GROUP BY Continent;

-- 4. Find the average GDP per capita for each continent
SELECT Continent, AVG(GDP_per_capita) AS Avg_GDP_per_capita 
FROM countries 
GROUP BY Continent;

-- 5. Find continents that have more than 5 countries
SELECT Continent, COUNT(*) AS Country_Count 
FROM countries 
GROUP BY Continent 
HAVING COUNT(*) > 5;

-- 6. Find continents where the total population is greater than 1 billion
SELECT Continent, SUM(Population) AS Total_Population 
FROM countries 
GROUP BY Continent 
HAVING SUM(Population) > 1000000000;

-- 7. Find the country with the highest population in each continent
SELECT Continent, Country, Population 
FROM countries 
WHERE (Continent, Population) IN (
    SELECT Continent, MAX(Population) 
    FROM countries 
    GROUP BY Continent
);

-- 8. For each continent, find the average population density, the highest population, and the lowest GDP per capita
SELECT Continent, 
       AVG(Population_density) AS Avg_Population_Density, 
       MAX(Population) AS Highest_Population, 
       MIN(GDP_per_capita) AS Lowest_GDP_per_capita 
FROM countries 
GROUP BY Continent;

-- 9. Find continents where the average population density is greater than 100 and the total GDP per capita is greater than 5000
SELECT Continent, 
       AVG(Population_density) AS Avg_Population_Density, 
       SUM(GDP_per_capita) AS Total_GDP_per_capita 
FROM countries 
GROUP BY Continent 
HAVING AVG(Population_density) > 100 AND SUM(GDP_per_capita) > 5000;

-- 10. For each continent, calculate the total area, the total arable percentage, and the average birthrate for countries with a population greater than 10 million
SELECT Continent, 
       SUM(Area) AS Total_Area, 
       SUM(Arable_percentage) AS Total_Arable_Percentage, 
       AVG(Birthrate) AS Avg_Birthrate 
FROM countries 
WHERE Population > 10000000 
GROUP BY Continent;