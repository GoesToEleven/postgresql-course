SELECT customers.cname, movies.mname FROM customers NATURAL JOIN rentals NATURAL JOIN movies;

-- same result
SELECT customers.cname, movies.mname FROM customers JOIN rentals USING (cid) JOIN movies USING (mid);

-- same result
SELECT customers.cname, movies.mname FROM customers JOIN rentals ON (customers.cid=rentals.cid) JOIN movies ON (rentals.mid=movies.mid);

-- same result
-- can't do LEFT or RIGHT with this
-- SELECT customers.cname, movies.mname FROM customers, rentals, movies WHERE customers.cid=rentals.cid AND rentals.mid=movies.mid;
