-- Question 1: How many official languages are there?
SELECT
  COUNT(*)
FROM
  countrylanguage
WHERE
  isofficial = true;

-- Question 2: What is the average life expectancy in the world?
SELECT
  AVG(lifeexpectancy)
FROM
  country;

-- Question 3: What is the average population for cities in the netherlands?
SELECT
  AVG(population)
FROM
  city
WHERE
  countrycode = 'NLD';