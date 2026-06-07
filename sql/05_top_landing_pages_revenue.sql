-- =====================================================
-- QUERY: top_landing_pages_revenue
-- PROJECT: google-analytics-revenue-conversion-analysis
-- AUTHOR: Antonio Neto
-- =====================================================

SELECT

  hit.page.pagePath AS landing_page,

  COUNT(*) AS purchasing_sessions,

  ROUND(
    SUM(totals.totalTransactionRevenue)
    / 1000000,
    2
  ) AS revenue_usd

FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`,
UNNEST(hits) AS hit

WHERE
  totals.totalTransactionRevenue IS NOT NULL
  AND hit.isEntrance = TRUE

GROUP BY landing_page

ORDER BY revenue_usd DESC

LIMIT 20;
