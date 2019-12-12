-- SELECT pfirstname, plastname, pstate
-- FROM people
-- WHERE pstate IN ('WY', 'KY', 'GA');

SELECT pfirstname, plastname, pstate
FROM people
WHERE pstate NOT IN ('WY', 'KY', 'GA');
