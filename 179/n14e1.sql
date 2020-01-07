SELECT
	pfirstname,
	plastname,
	ppoints
	FROM people
	WHERE ppoints > (SELECT AVG(ppoints) FROM people);

SELECT
	COUNT(*)
	FROM people
	WHERE ppoints > (SELECT AVG(ppoints) FROM people);
