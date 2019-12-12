-- SELECT * FROM PEOPLE;
-- SELECT pfirstname, pstate FROM PEOPLE;
-- SELECT pfirstname, pstate FROM PEOPLE WHERE pstate = 'NY';

-- for FUN
SELECT pstate, COUNT(pstate) AS "total" FROM PEOPLE GROUP BY pstate ORDER BY total;
