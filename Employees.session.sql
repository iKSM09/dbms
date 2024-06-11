-- Select all data from table
SELECT
  *
FROM
  employees;

-- Renaming columns
SELECT
  emp_no AS "Employee #",
  first_name AS "First Name",
  last_name AS "Last Name"
FROM
  employees;

-- Column Concatenation
SELECT
  emp_no AS "Employee #",
  CONCAT (first_name, ' ', last_name) AS "Employee Name",
  first_name || ' ' || last_name AS "Alternate Way"
FROM
  employees;

-- Aggregate Functions
-- AVG() -- calculates the average of a set of values.
-- COUNT() -- counts rows in a specified table or view.
-- MIN() -- gets the minimum value in a set of values.
-- MAX() -- gets the maximum value in a set of values.
-- SUM() -- calculates the sum of values.
SELECT
  COUNT(emp_no) AS "Total Employees"
FROM
  employees;

-- Get the highest salary available
SELECT
  MAX(salary)
FROM
  salaries;

SELECT
  employees.emp_no AS "ID",
  CONCAT (first_name, ' ', last_name) AS "Employee",
  salary AS "Salary"
FROM
  employees
  INNER JOIN salaries ON salaries.emp_no = employees.emp_no
WHERE
  salary = (
    SELECT
      MAX(salary)
    FROM
      salaries
  );

-- Get the total amount of salaries paid
SELECT
  SUM(salary) AS "Total Salary Paid",
  -- What is the average salary for the company?
  AVG(salary) AS "Total Average Salary"
FROM
  salaries;

-- What year was the youngest person born in the company?
SELECT
  MIN(birth_date) AS "Oldest Employee",
  MAX(birth_date) AS "Youngest Employee"
FROM
  employees;

-->> Select the employee with the name "Mayumi Schueller"
-- select statement to filter "Mayumi Schueller"
SELECT
  *
FROM
  employees
WHERE -- filter to find 'Mayumi Schueller' and limit data returned.
  first_name = 'Mayumi'
  AND last_name = 'Schueller';

SELECT
  *
FROM
  employees
WHERE
  first_name = 'Mayumi'
  OR last_name = 'Schueller';

SELECT
  *
FROM
  employees
WHERE
  (
    first_name = 'Georgi'
    AND last_name = 'Facello'
  )
  OR (
    first_name = 'Bezalel'
    AND last_name = 'Simmel'
  );

SELECT
  *
FROM
  employees
WHERE
  first_name = 'Georgi'
  AND last_name = 'Facello' -- AND always chain-up with the previous condition
  OR first_name = 'Bezalel' -- OR always start the new filter condition
  AND last_name = 'Simmel';