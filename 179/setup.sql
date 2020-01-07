-- SUBQUERY VALUE
-- SELECT pfirstname, plastname, 
-- (SELECT COUNT(*) FROM lists WHERE people.pid = lists.pid) AS AMT
-- FROM people ORDER BY AMT DESC;
-- ... just fyi here ...
-- SELECT pfirstname, plastname, lid, liid FROM
-- people JOIN lists USING (pid)
-- JOIN listitems USING (lid);
-- ... just fyi here ...
-- SELECT pfirstname, plastname, lid, liid, iname FROM
-- people JOIN lists USING (pid)
-- JOIN listitems USING (lid)
-- JOIN items USING (iid);

-- ... THIS IS NEW ...
SELECT
    pfirstname,
    plastname,
    (SELECT COUNT(*) FROM listitems WHERE listitems.lid = lists.lid) AS AMT
    FROM people JOIN lists USING (pid)
    ORDER BY AMT DESC;

-- SUBQUERY FILTER
-- SELECT pfirstname, plastname, ppoints FROM people WHERE ppoints = (SELECT MAX(ppoints) FROM people);
-- SELECT pfirstname, plastname, ppoints FROM people WHERE ppoints > (SELECT AVG(ppoints) FROM people);
-- SELECT COUNT(*) FROM people WHERE ppoints > (SELECT AVG(ppoints) FROM people);
