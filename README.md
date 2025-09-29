# Building a Modern Data Warehouse using SQL 🚀

Welcome to the **Data Warehouse and Analytics Project** repository!  
This project demonstrates a **comprehensive data warehousing and analytics solution**, from raw data ingestion to generating actionable insights for business decision-making.

---

![Data Warehouse Architecture](https://github.com/user-attachments/assets/bc07b98f-7477-4b62-9f21-75f91c9a3ce0)

---

## 📖 Project Overview

This project involves:

- **Data Architecture:** Designing a Modern Data Warehouse using **Medallion Architecture (Bronze, Silver, Gold layers)**.  
- **ETL Pipelines:** Extracting, transforming, and loading data from source systems into the warehouse.  
- **Data Modeling:** Developing **fact and dimension tables** optimized for analytical queries (star schema).  
- **Analytics & Reporting:** Creating **SQL-based reports and dashboards** to generate actionable insights.  

🎯 This repository is an excellent resource for professionals and students looking to showcase expertise in:

- SQL Development  
- Data Architecture  
- Data Engineering  
- ETL Pipeline Development  
- Data Modeling  
- Data Analytics  

---

## 🛠️ Important Links & Tools

**Everything is free to use!**

- **Datasets:** Access to project dataset (CSV files).  
- **SQL Server Express:** Lightweight server for hosting your SQL database.  
- **SQL Server Management Studio (SSMS):** GUI for managing and interacting with databases.  
- **Git Repository:** Version control and collaboration.  
- **DrawIO:** Design **data architecture, data flows, and models**.  
- **Notion:** Access **project template and steps** for all phases of implementation.

---

## 🚀 Project Requirements

### **Building the Data Warehouse (Data Engineering)**

**Objective:**  
Develop a modern data warehouse using SQL Server to consolidate **ERP and CRM data**, enabling analytical reporting and informed decision-making.

**Specifications:**

- **Data Sources:** Import data from two source systems (ERP and CRM) provided as CSV files.  
- **Data Quality:** Cleanse and resolve data quality issues prior to analysis.  
- **Integration:** Combine both sources into a single, user-friendly data model designed for analytical queries.  
- **Scope:** Focus on the latest dataset only; historization of data is not required.  
- **Documentation:** Provide clear documentation of the data model to support both business stakeholders and analytics teams.  

---

### **BI: Analytics & Reporting (Data Analysis)**

**Objective:**  
Develop SQL-based analytics to deliver detailed insights into:

- Customer Behavior  
- Product Performance  
- Sales Trends  

These insights empower stakeholders with **key business metrics**, enabling **strategic decision-making**.  

> For more details, refer to `docs/requirements.md`.

---

## 🏗️ Data Architecture

This project follows **Medallion Architecture** (Bronze → Silver → Gold) to ensure **clean, reliable, and business-ready data**:

- **Bronze Layer (Raw Data):** Stores raw source data exactly as received. Ensures traceability and auditing.  
- **Silver Layer (Cleansed Data):** Implements data cleansing, normalization, and standardization. Handles missing values, duplicates, and incorrect formats.  
- **Gold Layer (Business-Ready Data):** Fact and dimension tables (star schema), optimized for reporting and analytics. Acts as the **single source of truth**.

---

## 📂 Repository Structure

```text
data-warehouse-project/
│
├── datasets/                           # Raw datasets (ERP and CRM data)
│
├── docs/                               # Documentation and diagrams
│   ├── etl.drawio                      # ETL workflow diagrams
│   ├── data_architecture.drawio        # Data warehouse architecture
│   ├── data_catalog.md                 # Dataset catalog with metadata
│   ├── data_flow.drawio                # Data flow diagrams
│   ├── data_models.drawio              # Star schema models
│   ├── naming-conventions.md           # Naming standards for tables & columns
│
├── scripts/                            # SQL scripts for ETL and transformations
│   ├── bronze/                         # Raw data extraction and ingestion
│   ├── silver/                         # Data cleansing and transformations
│   ├── gold/                           # Analytical model creation
│
├── tests/                              # Quality and validation scripts
├── README.md                           # Project overview & instructions
├── LICENSE                             # License information
├── .gitignore                          # Ignore rules for Git
└── requirements.txt                    # Project dependencies
