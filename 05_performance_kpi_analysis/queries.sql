-- Performance & HR KPI Analysis

-- 1. Performance rating distribution
SELECT performance_rating, COUNT(*) AS employee_count
FROM performance
GROUP BY performance_rating
ORDER BY performance_rating DESC;

-- 2. Average performance rating by department
SELECT department, AVG(performance_rating) AS avg_rating
FROM performance
GROUP BY department
ORDER BY avg_rating DESC;

-- 3. Performance vs attrition
SELECT performance_rating,
       COUNT(CASE WHEN is_active = 0 THEN 1 END) AS exited_employees
FROM performance
GROUP BY performance_rating
ORDER BY performance_rating;

-- 4. High performers (rating >= 4)
SELECT COUNT(*) AS high_performers
FROM performance
WHERE performance_rating >= 4;

-- 5. KPI snapshot
SELECT
    COUNT(*) AS total_employees,
    AVG(performance_rating) AS avg_performance_rating,
    COUNT(CASE WHEN is_active = 0 THEN 1 END) AS total_exits
FROM performance;
