-- DELETE

SELECT * FROM customers;
SELECT * FROM rentals;
SELECT * FROM movies;

DELETE FROM customers
USING rentals, movies
WHERE customers.cid = rentals.cid
    AND rentals.mid = movies.mid
    AND movies.mname = 'The Lives of Others'
RETURNING *;

SELECT * FROM customers;
SELECT * FROM rentals;
SELECT * FROM movies;
