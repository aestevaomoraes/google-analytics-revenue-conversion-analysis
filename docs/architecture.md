# 🏗️ Architecture

## Overview

This project analyzes user behavior, revenue generation, and conversion performance using the Google Analytics Sample Dataset available in BigQuery.

The analysis focuses on transforming nested Google Analytics data into actionable business insights using SQL and BigQuery-native features.

---

## Data Source

```text
bigquery-public-data.google_analytics_sample.ga_sessions_*
```

### Dataset Characteristics

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

## BigQuery Features

### Advanced BigQuery Features

- STRUCT
- ARRAY
- UNNEST()
- Nested Data Analysis
- Session-Based Analytics

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

- Conversion Rate Analysis
- Revenue Analysis
- Device Analysis
- Channel Analysis
- Landing Page Analysis
- User Engagement Analysis

---

## Business Questions Answered

This project investigates:

- Which sessions generated revenue?
- What is the overall conversion rate?
- Which pages participate in purchasing journeys?
- Which landing pages drive revenue?
- Which acquisition channels convert best?
- Which devices generate purchases?
- How does user engagement impact revenue?

---

## Business Objective

Transform raw nested Google Analytics session data into actionable business insights that support revenue growth, conversion optimization, and data-driven decision-making.
