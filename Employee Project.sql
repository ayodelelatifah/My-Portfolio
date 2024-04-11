USE sakila;
-- Using the payment table to do some aggregate operations, (COUNT, MIN, MAX, AVG), HAVING and GROUP BY

SELECT amount, payment_date
FROM payment
GROUP BY amount, payment_date
ORDER BY 2;


-- How to Create a Table

CREATE TABLE sample (
	CustomerID INT,
	FirstName VARCHAR(255),
	LastName VARCHAR(255),
	City VARCHAR(255)
	);

    SHOW TABLES;
CREATE TABLE sample_2 AS 
SELECT City, Gender, Payment
FROM supermarket_sales
LIMIT 4;

SELECT *
FROM sample_2;
INSERT INTO sample
VALUES (1, 'Isa', 'Musa', 'Kaduna');

-- Update Date
UPDATE sample_2
SET City='Kaduna', Gender='Female'
WHERE Payment='Credit Card';

-- Delete Table


SELECT *
FROM sample_2;
DELETE FROM sample_2
WHERE City='Naypyitaw';
SELECT *
FROM sample_2;

-- Drop Table

CREATE TABLE one_minute(
	CustomerID INT);
    SELECT *
    FROM one_minute;  
    DROP TABLE one_minute;
    
-- ALter Table

    SELECT *
    FROM sample;    
    ALTER TABLE sample
    ADD event_date DATE;
    
-- Insert into Table

    INSERT INTO sample (event_date)
    VALUE ('2023-12-12');
ALTER TABLE sample
DROP city; 
ALTER TABLE sample
RENAME COLUMN CustomerID to ID;

-- Uodate Table
SELECT *
FROM sample;
UPDATE sample
SET event_date='2023-12-09'
WHERE ID = '1';

-- Modify Table
SELECT *
FROM sample;
ALTER TABLE sample
MODIFY COLUMN ID;

-- JOINS

USE Sakila;
SELECT s.first_name, s.last_name, a.address
FROM staff s
INNER JOIN address a
ON a.address_id = s.address_id;

SELECT address_id, first_name, last_name
FROM staff 
WHERE first_name = 'Mike' AND last_name = 'Hillyer';
SELECT f.title, COUNT(fa.actor_id) AS Number_of_Actors
FROM film as f
INNER JOIN film_actor as fa
USING (film_id)
GROUP BY 1
ORDER BY 2 DESC;

SELECT c.first_name, c.last_name, c.address_id
FROM Customer c
LEFT JOIN address a 
ON c.address_id = a.address_id;

-- BETWEEN AND OR
-- How many copies of the film Hunchbsck impossible exists in the invemtory system?

SELECT title, COUNT(inventory_id) as Numbers_of_copiefilms
FROM film 
INNER JOIN inventory
USING (film_id)
WHERE title = 'Hunchback Impossible'
GROUP BY 1;

-- Use subqueries to display all actors who appear in the film 'Alone Trip'
SELECT first_name, last_name
FROM actor
WHERE actor_id IN (
	SELECT actor_id
    FROM film_actor
    WHERE film_id IN(
    SELECT film_id
    FROM film
    WHERE title = 'Alone Trip'));
-- NAme of film that begins with 'K' and 'Q'. now use subquery to return title of movies starting with 'K' and 'Q' whose language is English
SELECT title
FROM film
WHERE title LIKE 'K%' OR title LIKE 'Q%'
AND language_id IN (
	SELECT language_id
    FROM language
    WHERE name_new = 'English');
    
    -- ALTER TABLE language
--     RENAME COLUMN name to name_new;
--  DERIVE TABLE
SELECT release_year
FROM (
	SELECT release_year);
    
    -- CREATE A TABLE SPECIFYING WHAT THE PRIMARY KEY IS
    use employee;
    CREATE TABLE Persons(
    ID INT NOT NULL,
    FirstName varchar(255) NOT NULL,
    LastName varchar(255),
    Age INT,
   CONSTRAINT FullName  PRIMARY KEY (ID, FirstName)
    );
    -- THIS IS FOR FOREIGN KEYS 
    CREATE TABLE Orders(
    ID INT NOT NULL,
    OrderNumber INT NOT NULL,
    PersonId int,
    PRIMARY KEY (ID),
    FOREIGN KEY (PersonId) REFERENCES Persons(ID)
    );
 
 ALTER TABLE Orders 
 DROP PRIMARY KEY;















