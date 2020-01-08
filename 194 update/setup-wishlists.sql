-- WISHLISTS DATABASE

-- EXAMPLE ONE

-- SELECT pid, ppoints AS "zero" FROM people ORDER BY pid LIMIT 12;

-- UPDATE people SET ppoints = ppoints + 10;

-- SELECT pid, ppoints AS "one" FROM people ORDER BY pid LIMIT 12;

-- UPDATE people SET ppoints = ppoints + 10 WHERE pid <= 10;

-- SELECT pid, ppoints AS "two" FROM people ORDER BY pid LIMIT 12;

-- UPDATE people SET ppoints = ppoints - 20;

-- SELECT pid, ppoints AS "three" FROM people ORDER BY pid LIMIT 12;

-- EXAMPLE TWO

SELECT pfirstname, plastname FROM people WHERE pid = 1;

UPDATE people SET 
    pfirstname = 'James',
    plastname = 'Bond'
    WHERE pid = 1;

SELECT pfirstname, plastname FROM people WHERE pid = 1;

UPDATE people SET 
    pfirstname = 'Ofjwivvhfaki',
    plastname = 'Ncntnns'
    WHERE pid = 1;

SELECT pfirstname, plastname FROM people WHERE pid = 1;
