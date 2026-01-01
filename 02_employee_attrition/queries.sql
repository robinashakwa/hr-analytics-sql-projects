-- Employee Attrition Analysis
-- Project: Understanding employee exit patterns

-- 1. Total number of employees
SELECT COUNT(*) AS total_employees
FROM employees;

-- 2. Total number of employees who left (attrition count)
SELECT COUNT(*) AS employees_left
FROM employees
WHERE is_active = 0;

-- 3. Overall attrition rate (%)
SELECT 
    (COUNT(CASE WHEN is_active = 0 THEN 1 END) * 100.0 / COUNT(*)) 
    AS attrition_rate_percentage
FROM employees;

-- 4. Department-wise attrition count
SELECT department, COUNT(*) AS attrition_count
FROM employees
WHERE is_active = 0
GROUP BY department
ORDER BY attrition_count DESC;

-- 5. Attrition by gender
SELECT gender, COUNT(*) AS attrition_count
FROM employees
WHERE is_active = 0
GROUP BY gender;

-- 6. Average salary of employees who left
SELECT AVG(salary) AS avg_salary_of_exited_employees
FROM employees
WHERE is_active = 0;

-- 7. Attrition by salary band
SELECT
    CASE
        WHEN salary < 50000 THEN 'Low Salary'
        WHEN salary BETWEEN 50000 AND 70000 THEN 'Medium Salary'
        ELSE 'High Salary'
    END AS salary_band,
    COUNT(*) AS attrition_count
FROM employees
WHERE is_active = 0
GROUP BY salary_band;

-- 8. Average tenure (in years) before exit
SELECT 
    AVG(DATEDIFF(exit_date, joining_date) / 365) 
    AS avg_tenure_years
FROM employees
WHERE is_active = 0;
