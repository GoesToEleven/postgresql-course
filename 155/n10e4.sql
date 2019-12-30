SELECT pfirstname, plastname, pdob FROM people
	WHERE pdob < CAST('now' AS TIMESTAMP) - CAST('10 years' AS INTERVAL);
