-- SELECT * FROM PEOPLE;
-- SELECT pfirstname, plastname, pstate, pcity FROM PEOPLE;
-- SELECT pfirstname, plastname, pstate, pcity FROM people WHERE pstate = 'NY' AND pcity = 'Cincinnati';
SELECT pfirstname, plastname, pstate, pcity FROM people WHERE pstate = 'NY' OR pcity = 'Cincinnati';

