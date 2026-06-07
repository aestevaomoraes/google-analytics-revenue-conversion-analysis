-- =====================================================
-- QUERY: channel_conversion_analysis
-- PROJECT: google-analytics-revenue-conversion-analysis
-- AUTHOR: Antonio Neto
-- =====================================================

SELECT

  channelGrouping AS channel,

  COUNT(*) AS total_sessions,

  COUNTIF(
    totals.totalTransactionRevenue IS NOT NULL
  ) AS purchasing_sessions,

  ROUND(
    COUNTIF(
      totals.totalTransactionRevenue IS NOT NULL
    )
    / COUNT(*) * 100,
    2
  ) AS conversion_rate_pct

FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`

GROUP BY channel

ORDER BY conversion_rate_pct DESC;
