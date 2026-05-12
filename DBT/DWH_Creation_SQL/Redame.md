# 📊 Airbnb dbt Project (Data Warehouse Transformation Layer) (ETL)

## 📌 Overview
This project is built using **dbt (data build tool)** on top of Snowflake to transform raw Airbnb data into a structured analytics-ready data warehouse.

It implements a **dimensional modeling approach (Star Schema)** including Fact and Dimension tables, along with staging models and data transformations.

---

## 🏗️ Project Layers

### 1. Staging Layer
- Raw data cleaning and standardization
- Basic transformations applied to prepare data for modeling

### 2. Dimension Tables
- DIM_HOST
- DIM_LOCATION
- DIM_PROPERTY
- DIM_DATE
- DIM_REVIEWS

### 3. Fact Table
- AIRBNBFACT
- Central table containing measurable Airbnb metrics
- Connected to all dimension tables via surrogate keys

---

## ⚙️ Tech Stack
- dbt (Data Build Tool)
- Snowflake Data Warehouse
- SQL
- Git & GitHub for version control

