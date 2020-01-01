SELECT
	people.pfirstname,
	people.plastname,
	lists.lname,
	items.iname
	FROM people NATURAL LEFT JOIN lists
		NATURAL LEFT JOIN listitems
		NATURAL LEFT JOIN items
	LIMIT 10;
