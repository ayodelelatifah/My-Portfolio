-- Name of film that begins with 'K' and 'Q'. now use subquery to return title of movies starting with 'K' and 'Q' whose language is English


SELECT title
FROM film
WHERE title LIKE 'K%' OR title LIKE 'Q%'
AND language_id IN (
	SELECT language_id
    FROM language
    WHERE name_new = 'English');
    