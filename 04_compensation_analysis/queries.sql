-- Compensation Analysis

-- 1. Average salary by department
SELECT department, AVG(salary) AS avg_salary
FROM compensation
GROUP BY department
ORDER BY avg_salary DESC;

-- 2. Average salary by gender
SELECT gender, AVG(salary) AS avg_salary
FROM compensation
GROUP BY gender;

-- 3. Salary distribution by job level
SELECT job_level, COUNT(*) AS employee_count, AVG(salary) AS avg_salary
FROM compensation
GROUP BY job_level
ORDER BY avg_salary DESC;

-- 4. Department-wise total payroll cost
SELECT department, SUM(salary) AS total_payroll
FROM compensation
GROUP BY department
ORDER BY total_payroll DESC;

-- 5. Gender pay gap by department
SELECT department, gender, AVG(salary) AS avg_salary
FROM compensation
GROUP BY department, gender
ORDER BY department;
