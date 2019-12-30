SELECT customers.cname, rentals.rid FROM
	customers NATURAL LEFT JOIN rentals;

SELECT customers.cname, rentals.rid, movies.mname FROM
	customers NATURAL LEFT JOIN rentals
	NATURAL LEFT JOIN movies;

SELECT customers.cname, rentals.rid, movies.mname FROM
	customers NATURAL LEFT JOIN rentals
	NATURAL FULL JOIN movies;
