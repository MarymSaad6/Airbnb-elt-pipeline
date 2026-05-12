# 🏠 Airbnb End-to-End Data Engineering Project

## 📌 Overview
This project is an end-to-end **Data Engineering pipeline** built on Airbnb dataset, covering data ingestion, data cleaning, warehousing, transformation, modeling, and visualization.

The solution integrates:
- Python (Data Cleaning)
- Snowflake (Data Warehouse)
- dbt (Data Modeling & Transformations)
- Power BI (Data Visualization)
- Medallion Architecture (Bronze / Silver / Gold Layers)

<img width="595" height="346" alt="image" src="https://github.com/user-attachments/assets/a078a1b3-2e86-486c-9a13-1809f2c893be" />

---

## 🧹 1. Data Cleaning (Python)
The project started with raw Airbnb data that required preprocessing and cleaning using Python.

### Key cleaning steps:
- Handling missing values
- Fixing data types
- Removing duplicates
- Standardizing column formats
- Feature engineering

The cleaned dataset was then exported and loaded into Snowflake for further processing.

---

## 🏗️ 2. Snowflake Layer
This layer handles:
- Warehouse and database setup
- Data ingestion using Snowflake stages
- Creation of raw schema
- Building the Data Warehouse (DWH)

### Main Tables:
- Raw Airbnb dataset table
- Fact table (AIRBNBFACT)
- Dimension tables:
  - Host
  - Location
  - Property
  - Date
  - Reviews

---

## 🔄 3. dbt Transformation Layer
dbt was used to build a structured and modular data model.

### What was implemented:
- Staging models for cleaned transformations
- Dimension tables modeling
- Fact table construction
- Data deduplication using window functions
- Star schema design

<img width="825" height="461" alt="WhatsApp Image 2026-05-06 at 10 47 29 PM" src="https://github.com/user-attachments/assets/addd23e6-49d8-46a9-9277-9dca2b3a5d72" />


### dbt Features Used:
- Modular SQL models
- Data lineage tracking
- Data validation tests
- dbt documentation generation

---
## 📊 4. Power BI Dashboards

Two interactive dashboards were created:

## Overview Dashboard
- General Airbnb market insights
- Price distribution analysis
- Availability trends
- Listings distribution by location

## Host Dashboard
- Host performance analysis
- Superhost distribution
- Listings per host
Response behavior analysis

