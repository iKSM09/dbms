/*
 * How many female customers do we have from
 * the state of Oregon (OR) AND New York (NY)
 */
SELECT
  COUNT(*)
FROM
  customers
WHERE
  gender = 'F'
  AND (
    state = 'OR'
    OR state = 'NY'
  );

-- How many customers aren't 55?
SELECT
  COUNT(*)
FROM
  customers
WHERE
  NOT age = 55;

-- How many female customers do we have from the state of Oregon (OR)?
SELECT
  COUNT(*)
FROM
  customers
WHERE
  gender = 'F'
  And state = 'OR';

-- Who over the age of 44 has an income of 100 000 or more? (excluding 44)
SELECT
  COUNT(income)
FROM
  customers
WHERE
  age > 44
  AND income >= 100000;

-- Who between the ages of 30 and 50 has an income less than 50 000?
-- (include 30 and 50 in the results)
SELECT
  COUNT(*)
FROM
  customers
WHERE
  (
    age <= 50
    AND age >= 30
  )
  AND income < 50000;

-- What is the average income between the ages of 20 and 50? (Excluding 20 and 50)
SELECT
  AVG(income)
FROM
  customers
WHERE
  age < 50
  AND age > 20;

/*
 * DB: Store
 * Table: Customers
 * Question:
 * Select people either under 30 or over 50 with an income above 50000
 * Include people that are 50
 * that are from either Japan or Australia
 */
SELECT
  customerid,
  country,
  age,
  income
FROM
  customers
WHERE
  (
    age < 30
    OR age >= 50
  )
  AND income > 50000
  AND (
    country = 'Japan'
    OR country = 'Australia'
  );

/*
 * DB: Store
 * Table: Orders
 * Question:
 * What was our total sales in June of 2004 for orders over 100 dollars?
 */
SELECT
  SUM(totalamount)
FROM
  orders
WHERE
  (
    orderdate >= '2004-06-01'
    AND orderdate < '2004-07-01'
  )
  AND totalamount > 100;