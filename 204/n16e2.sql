SELECT * FROM people ORDER BY ppoints DESC LIMIT 2;

UPDATE people
	SET ppoints = 9995
	WHERE pid = 134;

-- UPDATE people
-- 	SET pfirstname = 'James',
-- 		plastname = 'Bond'
-- 	WHERE pid = (SELECT pid FROM people ORDER BY ppoints DESC LIMIT 1)
-- 	RETURNING *;

UPDATE people
	SET pfirstname = 'James',
		plastname = 'Bond'
	WHERE ppoints IN (SELECT MAX(ppoints) FROM people)
	RETURNING *;

-- UPDATE people
-- 	SET pfirstname = 'James',
-- 		plastname = 'Bond'
-- 	WHERE ppoints = (SELECT MAX(ppoints) FROM people LIMIT 1)
-- 	RETURNING *;
