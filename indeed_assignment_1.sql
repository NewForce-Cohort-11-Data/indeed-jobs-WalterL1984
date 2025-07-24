SELECT COUNT(*) AS total_rows
FROM data_analyst_jobs;
SELECT *
FROM data_analyst_jobs
LIMIT 10;
SELECT *
FROM data_analyst_jobs
LIMIT 1 OFFSET 9;
SELECT company
FROM data_analyst_jobs
LIMIT 1 OFFSET 9;
SELECT COUNT(*) AS total_jobs
FROM data_analyst_jobs;
SELECT COUNT(*) AS tn_high_ratings
FROM data_analyst_jobs
WHERE location = 'Tennessee'
  AND star_rating > 4;
  SELECT 
    domain,
    COUNT(*) AS hard_to_fill_jobs
FROM 
    data_analyst_jobs
WHERE 
    skill ILIKE '%SQL%'                     -- requires SQL
    AND days_since_postings > 21            -- posted more than 3 weeks ago
    AND domain IS NOT NULL                  -- exclude NULL domains
GROUP BY 
    domain
ORDER BY 
    hard_to_fill_jobs DESC;
SELECT COUNT(*) AS postings_500_to_1000
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000;
SELECT 
    location AS state,
    ROUND(AVG(star_rating), 2) AS avg_rating
FROM 
    data_analyst_jobs
GROUP BY 
    location
ORDER BY 
    avg_rating DESC;
SELECT DISTINCT title 
FROM data_analyst_jobs;
SELECT COUNT(DISTINCT title) AS unique_job_titles
FROM data_analyst_jobs
WHERE location = 'California';
SELECT 
    company,
    ROUND(AVG(star_rating), 2) AS avg_rating,
    SUM(review_count) AS total_reviews
FROM 
    data_analyst_jobs
GROUP BY 
    company
HAVING 
    SUM(review_count) > 5000
ORDER BY 
    avg_rating DESC;
SELECT 
    company,
    ROUND(AVG(star_rating), 2) AS avg_rating,
    SUM(review_count) AS total_reviews
FROM 
    data_analyst_jobs
GROUP BY 
    company
HAVING 
    SUM(review_count) > 5000
ORDER BY 
    avg_rating DESC
LIMIT 1;
SELECT DISTINCT title AS analyst
FROM data_analyst_jobs;
SELECT COUNT(DISTINCT title) AS titles_without_analyst_or_analytics
FROM data_analyst_jobs
WHERE title NOT ILIKE '%Analyst%'
  AND title NOT ILIKE '%Analytics%';
SELECT 
    domain,
    COUNT(*) AS hard_to_fill_jobs
FROM 
    data_analyst_jobs
WHERE 
    skill ILIKE '%SQL%'
    AND days_since_posting > 21
    AND domain IS NOT NULL
GROUP BY 
    domain
ORDER BY 
    hard_to_fill_jobs DESC;
SELECT 
    domain,
    COUNT(*) AS hard_to_fill_jobs
FROM 
    data_analyst_jobs
WHERE 
    skill ILIKE '%SQL%'
    AND days_since_posting > 21
    AND domain IS NOT NULL
GROUP BY 
    domain
ORDER BY 
    hard_to_fill_jobs DESC
LIMIT 4;
SELECT 
    domain,
    COUNT(*) AS hard_to_fill_jobs
FROM 
    data_analyst_jobs
WHERE 
    skill ILIKE '%SQL%'
    AND days_since_posting > 21
    AND domain IS NOT NULL
GROUP BY 
    domain
ORDER BY 
    hard_to_fill_jobs DESC
LIMIT 4;
SELECT 
    domain,
    COUNT(*) AS hard_to_fill_jobs
FROM 
    data_analyst_jobs
WHERE 
    skill ILIKE '%SQL%'
    AND days_since_posting > 21       -- ✅ this is the correct column
    AND domain IS NOT NULL
GROUP BY 
    domain
ORDER BY 
    hard_to_fill_jobs DESC
LIMIT 4;
SELECT 
    domain,
    COUNT(*) AS hard_to_fill_jobs
FROM 
    data_analyst_jobs
WHERE 
    skill ILIKE '%SQL%'
    AND days_since_posting > 21
    AND domain IS NOT NULL
GROUP BY 
    domain
ORDER BY 
    hard_to_fill_jobs DESC
LIMIT 4;
SELECT column_name
FROM information_schema.columns
WHERE table_name = 'data_analyst_jobs';
SELECT *
FROM data_analyst_jobs
LIMIT 1;