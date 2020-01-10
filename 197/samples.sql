-- UPDATE customers 
--     SET cname = CONCAT(cname,'+HERO')
--     WHERE customers.cid IN (SELECT rentals.cid 
--         FROM rentals NATURAL FULL JOIN movies
--         WHERE customers.cid = rentals.cid
--         AND movies.mname = 'The Lives of Others');

-- IMPROVED: above WHERE cid comparison not needed

SELECT * FROM customers;

UPDATE customers 
    SET cname = CONCAT(cname,'+HERO')
    WHERE customers.cid IN (SELECT rentals.cid 
        FROM rentals NATURAL FULL JOIN movies
        WHERE movies.mname = 'The Lives of Others');

SELECT * FROM customers;

SELECT rentals.cid 
        FROM rentals NATURAL FULL JOIN movies
        WHERE movies.mname = 'The Lives of Others'