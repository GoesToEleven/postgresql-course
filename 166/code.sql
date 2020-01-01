SELECT DISTINCT pstate FROM people
	WHERE pstate LIKE 'O_';

SELECT pfirstname, plastname, pstate FROM people
	WHERE pstate IN (SELECT DISTINCT pstate FROM people WHERE pstate LIKE 'O_');

SELECT pfirstname, plastname, pstate FROM people
	WHERE pstate LIKE 'O_';
