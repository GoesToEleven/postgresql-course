-- SELECT pfirstname, plastname, pstate, pcity FROM people WHERE pcity IS NOT NULL LIMIT 10;

-- SELECT pfirstname, plastname, pstate, pcity FROM people WHERE pstate = 'NY' AND pcity NOT LIKE 'A%' ORDER BY pcity ASC;
-- SELECT pfirstname, plastname, pstate, pcity FROM people WHERE pcity NOT LIKE 'A%' ORDER BY pcity ASC;

SELECT pfirstname, plastname, ppoints, pdob 
FROM people 
WHERE ppoints NOT BETWEEN 250 AND 750 
ORDER BY ppoints ASC;

-- SELECT pfirstname, plastname, ppoints, pdob 
-- FROM people 
-- WHERE ppoints < 250 OR ppoints > 750 
-- ORDER BY ppoints ASC;
