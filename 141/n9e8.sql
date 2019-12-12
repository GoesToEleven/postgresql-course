SELECT pfirstname, plastname, pfavorites -> 'Desserts' -> 0
FROM people
WHERE pfavorites -> 'Desserts' ->> 0 ILIKE '%a%';
