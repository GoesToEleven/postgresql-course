SELECT
	pid,
	COUNT(lid)
	FROM people NATURAL LEFT JOIN lists
	GROUP BY pid
	ORDER BY count DESC;

-- UPDATE people
-- 	SET ppoints = ppoints + 1000
-- 	WHERE pid IN (SELECT
-- 		pid
-- 		WHERE (SELECT
-- 			COUNT(lid)
-- 			FROM people AS i NATURAL LEFT JOIN lists
-- 			WHERE people.pid = i.pid
-- 			GROUP BY pid) > 1);

UPDATE people
	SET ppoints = ppoints + 1000
	WHERE pid IN (SELECT
		pid
		WHERE (SELECT
			COUNT(lid)
			FROM lists
			WHERE people.pid = lists.pid
			GROUP BY pid) > 1);
