-- Using the payment table to do some aggregate operations, (COUNT, MIN, MAX, AVG), HAVING and GROUP BY
USE Sakila;
SELECT COUNT(amount), payment_date
FROM payment
GROUP BY amount, payment_date
ORDER BY 2;