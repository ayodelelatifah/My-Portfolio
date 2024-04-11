-- Using INNER JOIN

USE Sakila;
SELECT s.first_name, s.last_name, a.address
FROM staff s
INNER JOIN address a
ON a.address_id = s.address_id;