-- Recruitment Funnel Analysis

-- 1. Total number of candidates
SELECT COUNT(*) AS total_candidates
FROM recruitment;

-- 2. Candidates count by stage
SELECT stage, COUNT(*) AS candidate_count
FROM recruitment
GROUP BY stage
ORDER BY candidate_count DESC;

-- 3. Department-wise hiring (Joined candidates)
SELECT department, COUNT(*) AS hires
FROM recruitment
WHERE stage = 'Joined'
GROUP BY department;

-- 4. Offer to Join ratio
SELECT
    COUNT(CASE WHEN stage = 'Joined' THEN 1 END) * 100.0 /
    COUNT(CASE WHEN stage = 'Offered' THEN 1 END)
    AS offer_to_join_percentage
FROM recruitment;

-- 5. Funnel summary (Applied to Joined)
SELECT
    COUNT(CASE WHEN stage = 'Applied' THEN 1 END) AS applied,
    COUNT(CASE WHEN stage = 'Shortlisted' THEN 1 END) AS shortlisted,
    COUNT(CASE WHEN stage = 'Interviewed' THEN 1 END) AS interviewed,
    COUNT(CASE WHEN stage = 'Offered' THEN 1 END) AS offered,
    COUNT(CASE WHEN stage = 'Joined' THEN 1 END) AS joined
FROM recruitment;
