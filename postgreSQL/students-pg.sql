CREATE TABLE
  Class (
    id character(255),
    year integer NOT NULL,
    PRIMARY KEY (id)
  );

CREATE TABLE
  Student (
    id varchar(255) NOT NULL,
    class varchar(255) NOT NULL,
    firstName varchar(255) NOT NULL,
    lastName varchar(255) NOT NULL,
    dob date NOT NULL,
    sex varchar(1) NOT NULL,
    FOREIGN KEY (class) REFERENCES Class (id),
    PRIMARY KEY (id)
  );

INSERT INTO
  Class (id, year)
VALUES
  ('c1', 1);

INSERT INTO
  Class (id, year)
VALUES
  ('c2', 2);

INSERT INTO
  Class (id, year)
VALUES
  ('c2a', 2);

INSERT INTO
  Student
VALUES
  (
    's1',
    'c1',
    'George',
    'Jacobson',
    '1992-01-01',
    'm'
  );

INSERT INTO
  Student
VALUES
  ('s2', 'c2', 'Macy', 'Waterson', '1992-01-01', 'f');

INSERT INTO
  Student
VALUES
  ('s3', 'c1', 'Bill', 'Peters', '1992-01-01', 'm');

INSERT INTO
  Student
VALUES
  ('s4', 'c1', 'Janine', 'Wilson', '1992-01-01', 'f');

INSERT INTO
  Student
VALUES
  ('s5', 'c2', 'Jason', 'Lipton', '1992-01-01', 'm');

SELECT
  *
FROM
  student;

SELECT
  id,
  firstname,
  lastname
FROM
  student;

SELECT
  id,
  CONCAT (firstname, ' ', lastname) AS name
FROM
  student;

SELECT
  id,
  firstname || ' ' || lastname AS full_name
FROM
  student;