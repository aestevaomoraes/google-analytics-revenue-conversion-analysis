-- =====================================================
-- QUERY: engagement_revenue_analysis
-- PROJECT: google-analytics-revenue-conversion-analysis
-- AUTHOR: Antonio Neto
-- =====================================================

WITH engagement AS (

SELECT

  CASE

    WHEN totals.pageviews >= 10
      THEN 'High Engagement'

    WHEN totals.pageviews >= 5
      THEN 'Medium Engagement'

    ELSE 'Low Engagement'

  END AS engagement_level,

  totals.transactionRevenue AS revenue

FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`

)

SELECT

  engagement_level,

  COUNT(*) AS total_sessions,

  COUNTIF(revenue IS NOT NULL)
    AS purchasing_sessions,

  ROUND(
    SUM(revenue) / 1000000,
    2
  ) AS total_revenue_usd

FROM engagement

GROUP BY engagement_level

ORDER BY total_revenue_usd DESC;
