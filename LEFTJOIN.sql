-- LEFTJOIN

SELECT c.first_name, c.last_name, c.address_id
FROM Customer c
LEFT JOIN address a 
ON c.address_id = a.address_id;