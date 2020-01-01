SELECT rentals.rid, customers.cname FROM
	rentals JOIN customers USING (cid);

SELECT rentals.rid,
	(SELECT customers.cname FROM customers
		WHERE rentals.cid = customers.cid) AS "name"
	FROM rentals;

SELECT customers.cname,
	(SELECT COUNT(*) FROM rentals
		WHERE customers.cid=rentals.cid) AS "# Rentals"
	FROM customers;

-- SELECT people.pid, people.pfirstname FROM people
-- 	WHERE people.pid > (SELECT AVG(people.pid) FROM people);
