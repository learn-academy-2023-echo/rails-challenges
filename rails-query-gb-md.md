-- WHERE

-- What is the population of the US? (HINT: 278357000)

-- What is the area of the US? (HINT: 9.36352e+06)
-- WHERE
-- What is the population of the US? (HINT: 278357000)

-- What is the area of the US? (HINT: 9.36352e+06)

-- Which countries gained their independence before 1963?
*SELECT  name, population, surfacearea, indepyear
FROM country
WHERE indepyear < 1963

-- List the countries in Africa that have a population smaller than 30,000,000 and a life expectancy of more than 45? (HINT: 37 entries)

*SELECT  name, continent, population, lifeexpectancy
FROM country
WHERE continent= 'Africa'
AND population < 3e7 
AND lifeexpectancy > 45

-- Which countries are something like a republic? (HINT: Are there 122 or 143?)
** SELECT  name, governmentform
FROM country
WHERE governmentform 
LIKE 'Republic' (122)


-- Which countries are some kind of republic and achieved independence after 1945? (HINT: 92 entries)
** SELECT  name, indepyear, governmentform
FROM country
WHERE indepyear > 1945 
AND governmentform
LIKE 'Republic'


-- Which countries achieved independence after 1945 and are not some kind of republic? (HINT: 27 entries)
** SELECT  name, indepyear, governmentform
FROM country
WHERE indepyear > 1945 
AND governmentform 
NOT LIKE '%epublic'

-- Which countries gained their independence before 1963?
** SELECT  name, indepyear, governmentform
FROM country
WHERE indepyear < 1963

****Code name continent region surfacearea indepyear population lifeexpectancy gap gnpold local name governmentform headofstate capital code2*

ORDER BY
Which fifteen countries have the lowest life expectancy? (HINT: starts with Zambia, ends with Sierra Leonne)

**SELECT  name, lifeexpectancy
FROM country
ORDER BY lifeexpectancy ASC
LIMIT 15

Which fifteen countries have the highest life expectancy? (HINT: starts with Andorra, ends with Spain)
** SELECT  name, lifeexpectancy
FROM country
ORDER BY lifeexpectancy DESC
LIMIT 15 <<<< returned NULL / tried using COALESCE but kept getting error ? perhaps placement? Tried before and after LIMIT and with AND

Which five countries have the lowest population density (density = population / surfacearea)? (HINT: starts with Greenland)

Which countries have the highest population density?(HINT: starts with Macao)

Which is the smallest country by area? (HINT: .4)
**SELECT  name, surfacearea
FROM country 
ORDER BY surfacearea ASC
LIMIT 1

Which is the smallest country by population? (HINT: 50)?
** SELECT  name, population
FROM country 
ORDER BY population ASC
LIMIT 1

Which is the biggest country by area? (HINT: 1.70754e+07) 
** SELECT  name, surfacearea
FROM country 
ORDER BY surfacearea DESC
LIMIT 1

Which is the biggest country by population? (HINT: 1277558000)
** SELECT  name, population
FROM country 
ORDER BY population DESC
LIMIT 1


Who is the most influential head of state measured by population? (HINT: Jiang Zemin)

Subqueries: WITH
Of the countries with the top 10 gnp, which has the smallest population? (HINT: Canada)


Of the 10 least populated countries with permament residents (a non-zero population), which has the largest surfacearea? (HINT: Svalbard and Jan Mayen)