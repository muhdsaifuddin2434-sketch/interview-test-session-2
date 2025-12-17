CREATE INDEX idx_employees_dept_salary
ON employees(department, salary);

/* A composite index on (department, salary) lets the database quickly find all rows with
department = 'Sales' and efficiently filter those with salary > 50000 in a single, ordered structure,
avoiding a full table scan */