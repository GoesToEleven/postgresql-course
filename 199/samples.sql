SELECT * FROM customers;

UPDATE customers
    SET cname = CONCAT(customers.cname,'+HERO')
    FROM customers AS c NATURAL JOIN rentals NATURAL JOIN movies
    WHERE customers.cid = c.cid 
    AND movies.mname = 'The Lives of Others';

SELECT * FROM customers;
