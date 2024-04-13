-- GROUP BY, ORDER BY

SELECT address_id, first_name, last_name
FROM staff 
WHERE first_name = 'Mike' AND last_name = 'Hillyer';
SELECT f.title, COUNT(fa.actor_id) AS Number_of_Actors
FROM film as f
INNER JOIN film_actor as fa
USING (film_id)
GROUP BY 1
ORDER BY 2 DESC;
