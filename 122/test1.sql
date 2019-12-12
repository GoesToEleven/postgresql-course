-- ONE
-- SELECT * FROM people LIMIT 10;
-- SELECT pfirstname, pfavorites FROM people LIMIT 10;
-- SELECT pfirstname, pfavorites -> 'Destinations' FROM people LIMIT 10;
SELECT pfirstname, pfavorites -> 'Destinations' AS "DESTINATIONS" FROM people LIMIT 10;

-- FUN accessing array item
-- SELECT pfirstname, pfavorites -> 'Destinations' -> 3 AS "DESTINATIONS" FROM people LIMIT 10;

-- TWO
-- SELECT pfirstname, pfavorites -> 'Destinations' @> CAST('["Hawaii"]' AS JSONB) AS "HAWAII LOVERS" FROM people LIMIT 10;

-- THREE
-- SELECT pfirstname, pfavorites -> 'Destinations' ? 'Hawaii' AS "HAWAII LOVERS" FROM people LIMIT 10;
