-- =====================================================
-- QUERY: device_conversion_analysis
-- PROJECT: google-analytics-revenue-conversion-analysis
-- AUTHOR: Antonio Neto
-- =====================================================

WITH sessions AS (

SELECT

  device.deviceCategory AS device_category,

  totals.transactionRevenue AS revenue

FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`

)

SELECT

  device_category,

  COUNT(*) AS total_sessions,

  COUNTIF(revenue IS NOT NULL)
    AS purchasing_sessions,

  ROUND(
    COUNTIF(revenue IS NOT NULL)
    / COUNT(*) * 100,
    2
  ) AS conversion_rate_pct

FROM sessions

GROUP BY device_category

ORDER BY conversion_rate_pct DESC;
