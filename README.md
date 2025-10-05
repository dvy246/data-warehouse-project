# Enterprise-Grade Data Warehouse for Business Intelligence 🚀

This repository showcases a comprehensive, end-to-end data warehousing and analytics solution built from the ground up. It demonstrates the entire data lifecycle, from ingesting raw, disparate data sources to generating actionable business insights. This project is a testament to my skills in **Data Engineering**, **Data Architecture**, and **Data Analytics**.

---

### **Key Features**
* **Scalable Medallion Architecture**: Implemented a robust and scalable Bronze, Silver, and Gold layer architecture to ensure data quality, governance, and traceability across the entire data pipeline.
* **Optimized Star Schema Modeling**: Designed and developed a star schema data model with fact and dimension tables, optimized for high-performance analytical queries and business intelligence applications.
* **Automated ETL Pipelines**: Built efficient and repeatable SQL-based ETL scripts to handle data extraction, transformation, cleansing, and loading, ensuring data is always accurate and up-to-date.
* **Actionable Business Insights**: Developed a suite of SQL-based reports and analytics to uncover key business metrics related to customer behavior, product performance, and sales trends.

---

### Visuals**

![Data Warehouse Architecture](https://github.com/user-attachments/assets/bc07b98f-7477-4b62-9f21-75f91c9a3ce0)

---

### **Business Case & Project Objective**

In today's data-driven landscape, businesses need a single source of truth to make informed decisions. This project tackles that challenge head-on by building a centralized data warehouse that consolidates data from disparate ERP and CRM systems.

**The primary objective is to empower business stakeholders with the ability to:**
* Analyze customer behavior to improve marketing and sales strategies.
* Track product performance to optimize inventory and pricing.
* Identify sales trends to forecast future revenue and growth opportunities.

---

### **Tech Stack & Tools**

| Category          | Tool / Technology                                      |
| ----------------- | ------------------------------------------------------ |
| **Database** | SQL Server Express                                     |
| **IDE / Querying**| SQL Server Management Studio (SSMS)                    |
| **Architecture** | Medallion Architecture, Star Schema                    |
| **Version Control**| Git & GitHub                                           |
| **Diagramming** | Draw.io                                                |
| **Documentation** | Notion                                                 |

---

### **Data Architecture Deep Dive**

This project leverages a modern **Medallion Architecture** to progressively refine and transform data, ensuring the highest quality for analytics.

* **Bronze Layer (Raw Ingestion):** This layer serves as the initial landing zone for all source data, providing an unaltered, auditable copy of the raw ERP and CRM files.
* **Silver Layer (Cleansed & Conformed):** Data from the Bronze layer is cleansed, normalized, and integrated. This is where data quality rules are applied to handle missing values, duplicates, and inconsistencies.
* **Gold Layer (Business-Ready & Optimized):** The Silver layer's cleansed data is transformed into a highly optimized star schema, consisting of fact and dimension tables. This is the "single source of truth" for all analytics and reporting.

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

---

### **How to Get Started**

To get this project up and running on your local machine, follow these steps:

1.  **Clone the repository:**
    ```bash
    git clone [https://github.com/your-username/data-warehouse-project.git](https://github.com/your-username/data-warehouse-project.git)
    ```
2.  **Set up the database:**
    * Make sure you have SQL Server Express and SSMS installed.
    * Run the `scripts/init_database.sql` script to create the necessary databases and schemas.
3.  **Run the ETL pipelines:**
    * Execute the SQL scripts in the `scripts/` folder in the following order:
        1.  `bronze/`
        2.  `silver/`
        3.  `gold/`
4.  **Explore the data:**
    * Connect to the database using SSMS and start querying the `gold` layer tables!

---
