-- Workforce Diversity & Inclusion Analysis

-- 1. Overall gender distribution
SELECT gender, COUNT(*) AS employee_count
FROM diversity
GROUP BY gender;

-- 2. Department-wise gender distribution
SELECT department, gender, COUNT(*) AS employee_count
FROM diversity
GROUP BY department, gender
ORDER BY department;

-- 3. Gender distribution by job level
SELECT job_level, gender, COUNT(*) AS employee_count
FROM diversity
GROUP BY job_level, gender
ORDER BY job_level;

-- 4. Average salary by gender
SELECT gender, AVG(salary) AS avg_salary
FROM diversity
GROUP BY gender;

-- 5. Diversity by salary band
SELECT
    CASE
        WHEN salary < 50000 THEN 'Low Salary'
        WHEN salary BETWEEN 50000 AND 70000 THEN 'Mid Salary'
        ELSE 'High Salary'
    END AS salary_band,
    gender,
    COUNT(*) AS employee_count
FROM diversity
GROUP BY salary_band, gender
ORDER BY salary_band;
