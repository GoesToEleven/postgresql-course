-- SELECT pfirstname, plastname, pstate, pcity FROM people WHERE pstate LIKE 'A_';
-- SELECT pfirstname, plastname, pstate, pcity FROM people WHERE pcity LIKE 'A%';
-- SELECT pfirstname, plastname, pstate, pcity FROM people WHERE pcity LIKE '%a%';


-- ILIKE
SELECT pfirstname, plastname, pstate, pcity FROM people WHERE pcity ILIKE 'a%';
