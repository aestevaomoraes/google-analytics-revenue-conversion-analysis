-- =====================================================
-- QUERY: checkout_funnel_analysis
-- PROJECT: google-analytics-revenue-conversion-analysis
-- AUTHOR: Antonio Neto
-- =====================================================

-- BUSINESS PROBLEM
-- Identify pages most visited during purchasing sessions.

SELECT

  hit.page.pagePath,

  COUNT(*) AS occurrences

FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`,
UNNEST(hits) AS hit

WHERE totals.totalTransactionRevenue IS NOT NULL

GROUP BY hit.page.pagePath

ORDER BY occurrences DESC

LIMIT 20;
