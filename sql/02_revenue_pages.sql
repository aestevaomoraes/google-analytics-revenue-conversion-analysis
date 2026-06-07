-- =====================================================
-- QUERY: revenue_pages
-- PROJECT: google-analytics-revenue-conversion-analysis
-- AUTHOR: Antonio Neto
-- =====================================================

-- BUSINESS PROBLEM
-- Identify pages most associated with revenue.

-- SOLUTION
-- Count page occurrences in purchasing sessions.

SELECT

  hit.page.pagePath AS page,

  ROUND(
    SUM(totals.totalTransactionRevenue) / 1000000,
    2
  ) AS revenue_usd

FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`,
UNNEST(hits) AS hit

WHERE totals.totalTransactionRevenue IS NOT NULL

GROUP BY page

ORDER BY revenue_usd DESC

LIMIT 20;
