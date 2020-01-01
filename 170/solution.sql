SELECT
    employees.ename,
    department.dept
    FROM employees LEFT JOIN department USING (eid);

SELECT
    employees.ename,
    (SELECT department.dept 
        FROM department 
        WHERE department.eid = employees.eid) AS "dept name"
    FROM employees;