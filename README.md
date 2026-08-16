# Databricks Playground

This repository contains Databricks data pipelines and job configurations.

## Pipelines

### Top Countries - Last 7 Days
A medallion architecture pipeline that analyzes user geographic data from Google Analytics.

**Location:** `pipelines/top-countries-7d/`

**Architecture:**
- **Bronze:** Raw ingestion from `workspace.personal_site.pseudonymous_users`
- **Silver:** Filters data for the last 7 days
- **Gold:** Aggregates user counts by country

**Output Table:** `workspace.default.top_countries_7d`

## Jobs

### Google Analytics Ingestion
Ingests data from Google Analytics into Databricks.

Configuration: `jobs/google-analytics-ingestion.json`
