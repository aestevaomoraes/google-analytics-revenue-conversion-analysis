# 🏗️ Architecture

## Overview

This project analyzes user behavior, revenue generation, and conversion performance using the Google Analytics Sample Dataset available in BigQuery.

The analysis focuses on transforming nested Google Analytics data into business insights using SQL and BigQuery-native features.

---

## Data Source

```text
bigquery-public-data.google_analytics_sample.ga_sessions_20160801
```

Dataset characteristics:

- Nested fields (STRUCT)
- Repeated fields (ARRAY)
- Session-level data
- Revenue and transaction metrics
- Traffic acquisition information

---

## Analytics Architecture

```text
Google Analytics Dataset
            ↓
       BigQuery
            ↓
    ARRAY + STRUCT
            ↓
         UNNEST()
            ↓
      SQL Analytics
            ↓
 Revenue & Conversion
            ↓
   Business Insights
```

---

## Main SQL Techniques

### Data Exploration

- SELECT
- WHERE
- ORDER BY
- LIMIT

### Data Transformation

- CTE
- ARRAY_LENGTH()
- UNNEST()

### Business Analytics

- COUNT()
- COUNTIF()
- SUM()
- ROUND()

### Performance Analysis

- Conversion Rate
- Revenue Analysis
- Device Analysis
- Channel Analysis
- Landing Page Analysis
- User Engagement Analysis

---

## Business Objective

Transform raw nested web analytics data into actionable business insights that support decision-making and performance optimization.
