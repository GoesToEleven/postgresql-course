SELECT pid, ppoints FROM people ORDER BY pid LIMIT 10;

UPDATE people SET ppoints = ppoints + 10;

SELECT pid, ppoints FROM people ORDER BY pid LIMIT 10;
