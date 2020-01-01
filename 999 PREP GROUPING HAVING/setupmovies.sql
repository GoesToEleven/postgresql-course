SELECT customers.cname, (SELECT COUNT(*) FROM rentals WHERE customers.cid=rentals.cid) AS "# Rentals" FROM customers;

-- HANDS ON EXERCISES
SELECT customers.cname, COUNT(*) AS "number of rentals" 
FROM customers 
LEFT JOIN rentals ON (customers.cid=rentals.cid)
LEFT JOIN movies ON (rentals.mid=movies.mid)
GROUP BY customers.cname;

SELECT customers.cname, COUNT(*) AS "number of rentals" 
FROM customers 
LEFT JOIN rentals ON (customers.cid=rentals.cid)
LEFT JOIN movies ON (rentals.mid=movies.mid)
GROUP BY customers.cname
ORDER BY COUNT(*) DESC;

SELECT customers.cname, COUNT(*) AS "number of rentals" 
FROM customers 
LEFT JOIN rentals ON (customers.cid=rentals.cid)
LEFT JOIN movies ON (rentals.mid=movies.mid)
WHERE customers.cname LIKE '%e%'
GROUP BY customers.cname
ORDER BY COUNT(*) DESC;

select * from customers;