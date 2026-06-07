-- =====================================================
-- QUERY: country_revenue_analysis
-- PROJECT: google-analytics-revenue-conversion-analysis
-- AUTHOR: Antonio Neto
-- =====================================================

SELECT

  geoNetwork.country AS country,

  COUNTIF(
    totals.totalTransactionRevenue IS NOT NULL
  ) AS purchasing_sessions,

  ROUND(
    SUM(totals.totalTransactionRevenue)
    / 1000000,
    2
  ) AS revenue_usd

FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`

GROUP BY country

HAVING revenue_usd IS NOT NULL

ORDER BY revenue_usd DESC;
