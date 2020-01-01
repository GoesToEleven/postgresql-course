SELECT
	customers.cname,
	rentals.rid,
	movies.mname
	FROM customers LEFT JOIN rentals USING (cid)
		LEFT JOIN movies USING (mid);
