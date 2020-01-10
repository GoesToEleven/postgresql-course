SELECT pid, pfirstname, plastname AS "BEFORE" FROM people ORDER BY pid LIMIT 3;

UPDATE people SET pfirstname = 'James', plastname = 'Bond' WHERE pid = 1;
SELECT pid, pfirstname, plastname AS "AFTER" FROM people ORDER BY pid LIMIT 3;

UPDATE people SET pfirstname = 'Ofjwivvhfaki', plastname = 'Ncntnns' WHERE pid = 1;
SELECT pid, pfirstname, plastname AS "AFTER2" FROM people ORDER BY pid LIMIT 3;

UPDATE people SET (pfirstname, plastname) = ('Jenny', 'Moneypenny') WHERE pid = 1;
SELECT pid, pfirstname, plastname AS "AFTER3" FROM people ORDER BY pid LIMIT 3;

UPDATE people SET pfirstname = 'Ofjwivvhfaki', plastname = 'Ncntnns' WHERE pid = 1;
SELECT pid, pfirstname, plastname AS "AFTER4" FROM people ORDER BY pid LIMIT 3;

