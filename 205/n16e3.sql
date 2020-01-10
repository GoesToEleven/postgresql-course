UPDATE people
	SET ppoints = ppoints + 100
	WHERE ppoints <= (SELECT AVG(ppoints) FROM people)
	RETURNING pid, ppoints;

-- SELECT pid, ppoints
-- 	FROM people
-- 	WHERE ppoints <= (SELECT AVG(ppoints) FROM people)
-- 	ORDER BY pid
-- 	LIMIT 10;
