-- Update a Table
SHOW TABLES;
CREATE TABLE sample_2 AS 
SELECT City, Gender, Payment
FROM supermarket_sales
LIMIT 4;

SELECT *
FROM sample_2;
INSERT INTO sample
VALUES (1, 'Isa', 'Musa', 'Kaduna');
UPDATE sample_2
SET City='Kaduna', Gender='Female'
WHERE Payment='Credit Card';