SELECT employees.ename, department.dept
	FROM employees JOIN department ON (employees.eid = department.eid)
	WHERE department.dept = 'Sales';

SELECT employees.ename, department.dept
	FROM employees JOIN department ON (employees.eid = department.eid);

SELECT employees.ename, department.dept
	FROM employees LEFT JOIN department ON (employees.eid = department.eid);

SELECT employees.ename, department.dept
	FROM employees RIGHT JOIN department ON (employees.eid = department.eid);

SELECT employees.ename, department.dept
	FROM employees FULL JOIN department ON (employees.eid = department.eid);
