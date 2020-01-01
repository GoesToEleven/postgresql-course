SELECT people.pid, people.pfirstname FROM people WHERE people.pid > (SELECT AVG(people.pid) FROM people);

-- SELECT people.pcity, COUNT(*) AS "people per city" from people GROUP BY people.pcity;
-- SELECT people.pcity, COUNT(*) AS "people per city" from people GROUP BY people.pcity ORDER BY "people per city" DESC;

-- SELECT people.pstate, COUNT(*) AS "people per city" from people GROUP BY people.pstate;
-- SELECT people.pstate, COUNT(*) AS "people per city" from people GROUP BY people.pstate ORDER BY "people per city" DESC;

-- MORE THAN TWO VALUES
-- anything that is not an AGGREGATE function must be in the GROUP BY
-- SELECT people.pcity, people.pstate, COUNT(*) AS "people per city" from people GROUP BY people.pcity, people.pstate;
-- SELECT people.pcity, people.pstate, COUNT(*) AS "people per city" from people GROUP BY people.pcity, people.pstate ORDER BY "people per city" DESC, people.pcity ASC LIMIT 10;
-- SELECT people.pcity, people.pstate, COUNT(*) AS "people per city" from people GROUP BY people.pstate, people.pcity ORDER BY "people per city" DESC, people.pcity ASC LIMIT 10;

-- ORDERING
-- WHERE and HAVING
-- SELECT people.pcity, people.pstate, COUNT(*) AS "people per city" from people 
-- GROUP BY people.pcity, people.pstate 
-- HAVING COUNT(*) >= 2
-- ORDER BY "people per city" DESC, people.pcity ASC;


-- SELECT people.pcity, people.pstate, COUNT(*) AS "people per city" from people 
-- WHERE pcity LIKE 'A%'
-- GROUP BY people.pcity, people.pstate 
-- HAVING COUNT(*) >= 2
-- ORDER BY "people per city" DESC, people.pcity ASC;

-- HANDS ON EXERCISES
-- SELECT * FROM people;


