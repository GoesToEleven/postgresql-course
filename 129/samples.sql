-- SELECT pfirstname, plastname, ppoints FROM people WHERE ppoints BETWEEN 250 AND 750;
-- SELECT pfirstname, plastname, ppoints FROM people WHERE ppoints >= 250 AND ppoints <= 750;

SELECT pfirstname, plastname, pdob FROM people WHERE pdob BETWEEN '2000-01-01 01:01:01' AND '2010-01-01 01:01:01';
