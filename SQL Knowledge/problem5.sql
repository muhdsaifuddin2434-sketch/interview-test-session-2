WITH dept_stats AS (
SELECT
department,
AVG(salary) AS avg_salary,
MAX(salary) AS highest_salary
FROM employees
GROUP BY department
)
SELECT
ds.department,
ds.avg_salary,
ds.highest_salary,
e.name AS employee_name
FROM dept_stats ds
JOIN employees e
ON e.department = ds.department
AND e.salary = ds.highest_salary
ORDER BY ds.department, e.name;