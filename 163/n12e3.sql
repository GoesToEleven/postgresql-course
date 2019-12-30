SELECT cname FROM customers UNION
	SELECT ename FROM employees;

SELECT cname FROM customers UNION
	SELECT ename FROM employees UNION
	SELECT mname FROM movies;
