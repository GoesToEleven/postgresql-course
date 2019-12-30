SELECT employees.ename, department.dept
	FROM employees LEFT JOIN department USING (eid);
