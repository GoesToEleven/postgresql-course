SELECT cname from customers;

SELECT cname from customers GROUP BY cname;

SELECT cname, COUNT(*) from customers GROUP BY cname;

SELECT cname, COUNT(*) from customers 
    JOIN rentals USING(cid)
    GROUP BY cname;

SELECT cname, COUNT(rid) from customers 
    LEFT JOIN rentals USING(cid)
    GROUP BY cname;

SELECT cname, COUNT(rid) AS amt from customers 
    LEFT JOIN rentals USING(cid)
    GROUP BY cname
    ORDER BY amt DESC;

SELECT cname, COUNT(rid) AS amt from customers 
    LEFT JOIN rentals USING(cid)
    GROUP BY cname
    HAVING cname LIKE '%e%'
    ORDER BY amt DESC;
    
SELECT cname, COUNT(rid) AS amt from customers 
    LEFT JOIN rentals USING(cid)
    WHERE cname LIKE '%e%'
    GROUP BY cname
    ORDER BY amt DESC;