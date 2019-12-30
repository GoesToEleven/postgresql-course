-- INNER JOIN
-- SELECT employees.ename, department.dept FROM employees JOIN department ON employees.eid = department.eid;
-- SELECT employees.ename, department.dept FROM employees JOIN department USING(eid);
-- SELECT employees.eid FROM employees INTERSECT SELECT department.eid FROM department;

-- LEFT JOIN
-- SELECT employees.ename, department.dept FROM employees LEFT JOIN department ON employees.eid = department.eid;
-- SELECT employees.ename, department.dept FROM employees LEFT JOIN department USING(eid);

-- RIGHT JOIN
-- SELECT employees.ename, department.dept FROM employees RIGHT JOIN department ON employees.eid = department.eid;
-- SELECT employees.ename, department.dept FROM employees RIGHT JOIN department USING(eid);

-- FULL JOIN
-- SELECT employees.ename, department.dept FROM employees FULL JOIN department ON employees.eid = department.eid;
-- SELECT employees.ename, department.dept FROM employees FULL JOIN department USING(eid);

-- EXCEPT
-- SELECT employees.eid FROM employees EXCEPT SELECT department.eid FROM department;
-- SELECT department.eid FROM department EXCEPT SELECT employees.eid FROM employees;

-- UNION
-- SELECT cname FROM customers UNION SELECT mname FROM movies;
-- SELECT cname FROM customers UNION SELECT mname FROM movies ORDER BY cname;
-- SELECT cname AS "RESULTS" FROM customers UNION SELECT mname FROM movies ORDER BY "RESULTS";

-- some of the above can also be written as ...
-- SELECT employees.ename, department.dept FROM employees INNER JOIN department ON employees.eid = department.eid;
-- SELECT employees.ename, department.dept FROM employees LEFT OUTER JOIN department ON employees.eid = department.eid;
-- SELECT employees.ename, department.dept FROM employees RIGHT OUTER JOIN department ON employees.eid = department.eid;
-- SELECT employees.ename, department.dept FROM employees FULL OUTER JOIN department ON employees.eid = department.eid;

-- CROSS JOIN
-- SELECT * FROM employees CROSS JOIN department;

-- FULL JOIN multiple TABLES
-- SELECT customers.cname, movies.mname FROM (customers JOIN rentals USING (cid)) JOIN movies USING (mid);
