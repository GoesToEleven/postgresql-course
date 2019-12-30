-- SELECT pfirstname, plastname FROM people LIMIT 10;

-- SELECT pfirstname, plastname, lname FROM
-- 	people LEFT JOIN lists ON (people.pid = lists.pid)
-- 	LIMIT 10;

-- SELECT pfirstname, plastname, lname, iname FROM
-- 	people LEFT JOIN lists ON (people.pid = lists.pid)
-- 	LEFT JOIN listitems USING (lid)
-- 	NATURAL LEFT JOIN items
-- 	LIMIT 10;

-- Consistent join methods
SELECT pfirstname, plastname, lname, iname FROM
	people LEFT JOIN lists ON (people.pid = lists.pid)
	LEFT JOIN listitems ON (lists.lid = listitems.lid)
	LEFT JOIN items ON (listitems.iid = items.iid)
	LIMIT 10;
