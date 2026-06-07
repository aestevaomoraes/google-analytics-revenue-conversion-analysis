-- =====================================================
-- QUERY: revenue_sessions
-- PROJECT: google-analytics-revenue-conversion-analysis
-- AUTHOR: Antonio Neto
-- =====================================================

-- BUSINESS PROBLEM
-- Identify sessions that generated revenue.

-- SOLUTION
-- Count purchasing sessions and calculate conversion rate.

SELECT

  COUNT(*) AS total_sessions,

  COUNTIF(
    totals.totalTransactionRevenue IS NOT NULL
  ) AS purchasing_sessions,

  ROUND(
    COUNTIF(totals.totalTransactionRevenue IS NOT NULL)
    / COUNT(*) * 100,
    2
  ) AS conversion_rate_pct

FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`;
