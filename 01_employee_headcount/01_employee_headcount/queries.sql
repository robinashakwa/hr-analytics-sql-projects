-- Employee Headcount Analysis
-- Project: Employee Headcount & Workforce Distribution

-- 1. Total number of employees
SELECT COUNT(*) AS total_employees
FROM employees;

-- 2. Department-wise headcount
SELECT department, COUNT(*) AS headcount
FROM employees
GROUP BY department
ORDER BY headcount DESC;

-- 3. Active vs inactive employees
SELECT is_active, COUNT(*) AS employee_count
FROM employees
GROUP BY is_active;
