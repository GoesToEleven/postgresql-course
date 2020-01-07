SELECT customers.cname, 
(SELECT COUNT(*) FROM rentals 
    WHERE customers.cid = rentals.cid) 
    AS "movies rented" 
FROM customers;