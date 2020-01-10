-- SELECT * FROM customers;

-- UPDATE customers
--     SET cname = CONCAT(cname,'+HERO')
--     FROM rentals, movies
--     WHERE customers.cid = rentals.cid
--         AND rentals.mid = movies.mid
--         AND movies.mname = 'The Lives of Others';

-- SELECT * FROM customers;

-- EXPERIMENT
SELECT customers.cid, cname, rid, mname
    FROM customers, rentals, movies
    WHERE customers.cid = rentals.cid
    AND rentals.mid = movies.mid;

SELECT customers.cid, cname, rid, mname
    FROM customers NATURAL FULL JOIN rentals
    NATURAL FULL JOIN movies;

SELECT customers.cid, cname, rid, mname
    FROM customers FULL JOIN rentals USING (cid)
    FULL JOIN movies USING (mid);

SELECT customers.cid AS "LAST", cname, rid, mname
    FROM customers FULL JOIN rentals ON (customers.cid=rentals.cid)
    FULL JOIN movies ON (rentals.mid=movies.mid);
    