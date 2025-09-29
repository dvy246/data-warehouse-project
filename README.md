Building a Modern Data Warehouse using SQL 🚀

Welcome to the Data Warehouse and Analytics Project repository! This project demonstrates a full-fledged data warehousing and analytics solution, covering everything from raw data ingestion to generating actionable insights for decision-making.

<img width="1062" height="796" alt="Data Warehouse Architecture" src="https://github.com/user-attachments/assets/bc07b98f-7477-4b62-9f21-75f91c9a3ce0" />
🏗️ Data Architecture

This project follows Medallion Architecture (Bronze → Silver → Gold) to ensure clean, reliable, and business-ready data:

Bronze Layer (Raw Data)

Stores raw source data exactly as received.

Data ingested from CSV files and other sources into SQL Server.

Ensures traceability, auditing, and reproducibility of all source data.

Silver Layer (Cleansed Data)

Implements data cleansing, normalization, and standardization.

Handles missing values, duplicates, and incorrect formats.

Provides a structured and consistent dataset ready for analytical transformations.

Gold Layer (Business-Ready Data)

Houses data modeled into fact and dimension tables (star schema).

Optimized for reporting, dashboards, and analytics queries.

Acts as the single source of truth for business intelligence and analytics.

🔄 ETL Pipelines

Extract: Collect data from multiple sources (CSV, databases).

Transform: Clean, normalize, and structure data in the Silver layer.

Load: Store transformed, business-ready data into Gold layer fact/dimension tables.

Pipelines ensure data integrity, automation, and reproducibility.

📊 Analytics & Reporting

SQL queries generate aggregated insights and KPIs.

Data can be connected to visualization tools for dashboards and BI reports.

Supports business decisions by providing actionable and timely insights.

🎯 Skills & Expertise Demonstrated

SQL Development & Query Optimization

Data Modeling & Star Schema Design

ETL Pipeline Design & Automation

Data Cleansing & Transformation Techniques

Analytics & Reporting
