-- SELECT * from customers;

-- SELECT customers.cname, rentals.rid, movies.mname FROM 
-- (customers LEFT JOIN rentals USING (cid))
-- LEFT JOIN movies USING (mid);

-- SELECT rentals.rid, 
-- (SELECT customers.cname FROM customers WHERE rentals.cid = customers.cid) AS "name"
-- from rentals;

-- SELECT rentals.rid, customers.cname FROM rentals JOIN customers USING (cid);




-- COUNT


-- SELECT COUNT(*) FROM customers;
-- SELECT COUNT(*) FROM rentals;
-- SELECT COUNT(*) FROM movies;

-- SELECT COUNT(*) FROM customers WHERE cname LIKE '%e%';

-- SCALAR SUBQUERY
-- SELECT employees.ename, 
-- (SELECT department.dept FROM department WHERE department.eid = employees.eid) AS "DPT"
-- FROM employees;

-- SELECT employees.ename, department.dept FROM employees LEFT JOIN
-- department USING (eid);


-- COUNT SCALAR SUBQUERY
-- SELECT customers.cname, 
-- (SELECT COUNT(*) FROM rentals WHERE rentals.cid = customers.cid) AS "Amt"
-- FROM customers;

SELECT customers.cname, 
(SELECT COUNT(*) FROM rentals WHERE rentals.cid = customers.cid) AS "Amt"
FROM customers WHERE
(SELECT COUNT(*) FROM rentals WHERE rentals.cid = customers.cid) > 2;

