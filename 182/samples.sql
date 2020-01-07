-- SELECT pcity, COUNT(*) AS "population" FROM people GROUP BY pcity;

-- SELECT
-- 	pfirstname,
-- 	plastname,
-- 	(SELECT COUNT(*) FROM listitems WHERE listitems.lid = lists.lid)
-- 	FROM people JOIN lists USING (pid)
-- 	WHERE (SELECT COUNT(*) FROM listitems WHERE listitems.lid = lists.lid) > 1
-- 	ORDER BY count DESC;

    
SELECT
	pfirstname,
	plastname,
    COUNT(*) AS "# of items" 
    FROM people
    JOIN lists USING(pid)
    JOIN listitems USING (lid)  
    GROUP BY pfirstname, plastname
	ORDER BY "# of items" DESC;

    SELECT pfirstname, listitems 
    FROM people
    JOIN lists USING(pid)
    JOIN listitems USING(lid)
    WHERE pfirstname = 'Ideipepzekir';