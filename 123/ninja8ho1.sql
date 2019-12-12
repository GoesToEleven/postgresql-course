-- SELECT * FROM people LIMIT 10;
-- SELECT pfirstname, pfavorites FROM people LIMIT 10;
SELECT pfirstname, pfavorites -> 'Desserts' FROM people LIMIT 10;

-- fancy
-- SELECT pfirstname, pfavorites -> 'Desserts' AS "FavDesserts" FROM people LIMIT 10;

