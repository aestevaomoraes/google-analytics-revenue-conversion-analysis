# 📊 Google Analytics Revenue & Conversion Analysis

Business-oriented analytics project using Google BigQuery and SQL to analyze revenue generation, conversion behavior, acquisition channels, user engagement and customer journeys from the Google Analytics Sample Dataset.

---

## 🏗️ Project Architecture

![Project Architecture](images/project_architecture.png)

---

## 🎯 Business Problem

Companies often track website traffic but struggle to understand:

- Which sessions generate revenue
- Which channels convert best
- Which landing pages drive purchases
- How user behavior impacts conversion
- Which devices contribute most to sales

This project transforms raw Google Analytics session data into actionable business insights using BigQuery SQL.

---

## 📂 Dataset

**Source**

Google Analytics Sample Dataset

```sql
bigquery-public-data.google_analytics_sample.ga_sessions_*
```

The dataset contains:

- User sessions
- Traffic sources
- Devices
- Revenue data
- Nested arrays and structs
- Page interactions

---

## 🛠️ Technologies Used

- Google BigQuery
- SQL
- CTEs
- COUNTIF()
- ARRAY
- STRUCT
- UNNEST()
- Revenue Analysis
- Conversion Analysis
- Funnel Analysis

---

## 📈 Key Business Insights

### Conversion Analysis

- 1,711 sessions analyzed
- 34 purchasing sessions
- 1.99% conversion rate

### Homepage Impact

- Homepage was the main entry point among purchasing sessions

### Channel Performance

- The channel with the highest traffic volume was not the channel with the highest conversion rate

### Device Performance

- Desktop users generated nearly all purchases

### User Engagement

- Medium-engagement users generated more revenue than high-engagement users
---

## 📁 Repository Structure

```text
google-analytics-revenue-conversion-analysis

├── docs/
│   └── architecture.md

├── images/
│   └── project_architecture.png

├── insights/
│   └── business_findings.md

├── sql/
│   └── analytical_queries.sql

├── README.md
└── LICENSE
```

---

## 📄 Business Findings

Detailed business insights can be found here:

```text
insights/business_findings.md
```

---

## 🚀 Skills Demonstrated

- Business Analytics
- SQL for Analytics
- BigQuery
- Nested Data Analysis
- ARRAY & STRUCT
- UNNEST
- KPI Analysis
- Conversion Analysis
- Revenue Analysis
- Data Storytelling

---

## 👨‍💻 Author

Antonio Estevao

Business Analytics | SQL | BigQuery | Data Analytics
