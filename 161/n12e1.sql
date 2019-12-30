SELECT customers.cname, rentals.rid, movies.mname FROM
	rentals RIGHT JOIN customers USING (cid)
	LEFT JOIN movies USING (mid);
