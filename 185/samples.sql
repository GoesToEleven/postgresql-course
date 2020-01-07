SELECT cname from customers;

SELECT cname from customers GROUP BY cname;

SELECT cname, COUNT(*) from customers GROUP BY cname;

SELECT cname, COUNT(*) from customers 
    JOIN rentals USING(cid)
    GROUP BY cname;

SELECT cname, COUNT(rid) from customers 
    LEFT JOIN rentals USING(cid)
    GROUP BY cname;