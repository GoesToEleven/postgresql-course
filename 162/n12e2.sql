SELECT movies.mname, rentals.rid, customers.cname FROM
	customers NATURAL JOIN rentals
	NATURAL RIGHT JOIN movies;

SELECT movies.mname, rentals.rid, customers.cname FROM
	movies NATURAL LEFT JOIN rentals
	NATURAL LEFT JOIN customers;
