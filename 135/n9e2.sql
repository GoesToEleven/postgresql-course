SELECT pfirstname, plastname, pstate, ppoints
FROM people
WHERE ppoints >= 9500
	OR pstate = 'NY';
