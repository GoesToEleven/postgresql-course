SELECT pfirstname, plastname, pstate, ppoints
FROM people
WHERE ppoints >= 7000
	AND pstate = 'NY';
