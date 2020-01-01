SELECT
	customers.cname,
	movies.mname,
	rentals.rid
	FROM customers JOIN rentals USING (cid)
		JOIN movies USING (mid)
	LIMIT 10;

SELECT
	(SELECT customers.cname FROM customers WHERE customers.cid = rentals.cid),
	(SELECT movies.mname FROM movies WHERE movies.mid = rentals.mid),
	rentals.rid
	FROM rentals
	LIMIT 10;
