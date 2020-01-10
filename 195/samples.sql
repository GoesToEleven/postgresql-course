SELECT pid, ppoints AS "BEFORE" FROM people ORDER BY pid LIMIT 10;

-- UPDATE people SET ppoints = ppoints + 10 WHERE pid <= 10 RETURNING *;
UPDATE people SET ppoints = ppoints + 10 WHERE pid <= 10 RETURNING pid, ppoints;

SELECT pid, ppoints AS "AFTER" FROM people ORDER BY pid LIMIT 10;
