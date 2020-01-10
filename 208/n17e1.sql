DELETE FROM people
	WHERE ppoints <= ((SELECT MIN(ppoints) FROM people) + 1000);
