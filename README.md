# 🚀  Modern Data Warehouse for Business Intelligence

A full-scale, end-to-end data warehousing solution that consolidates multiple data sources into a single source of truth. This project enables businesses to gain actionable insights for sales, marketing, and product optimization.

---

## Problem Statement

Businesses often deal with fragmented ERP and CRM data, leading to:

- Delayed decision-making
- Inaccurate reporting
- Difficulty in analyzing trends

This data warehouse centralizes data, enforces quality, and ensures accurate analytics.

---

## Key Features

- **Scalable Medallion Architecture**: Bronze, Silver, Gold layers ensure data quality, governance, and traceability.  
- **Optimized Star Schema Modeling**: Fact and dimension tables are designed for high-performance queries.  
- **Automated ETL Pipelines**: SQL-based ETL scripts orchestrated using Apache Airflow for seamless extraction, transformation, and loading.  
- **Actionable Insights**: Dashboards and analytical models for customer, sales, and product performance.

---

## Architecture & Data Flow

### Data Warehouse Architecture
![Data Warehouse Architecture](https://github.com/dvy246/data-warehouse-project/blob/main/docs/architecture/data_architecture.png)

### Data Layers
![Data Layers](https://github.com/dvy246/data-warehouse-project/blob/main/docs/data_layers/data_layers.png)

### Data Flow
![Data Flow](https://github.com/dvy246/data-warehouse-project/blob/main/docs/data_flow/data_flow.png)

---

## Data Modeling

### Star Schema
![Star Schema](https://github.com/dvy246/data-warehouse-project/blob/main/docs/data_modelling/star_schema.png)

### Tables Connection
![Tables Connection](https://github.com/dvy246/data-warehouse-project/blob/main/docs/data_modelling/tables_connection.png)

Complete table documentation and relationships are available [here](https://github.com/dvy246/data-warehouse-project/blob/main/docs/data_modelling/data_model.md).

---

## Naming Conventions & Standards

Consistent naming ensures maintainability, scalability, and easy collaboration. Refer to [naming_conventions.md](https://github.com/dvy246/data-warehouse-project/blob/main/docs/naming_conventions/naming_conventions.md).

---

## ETL Pipelines

The automated ETL pipelines include:

1. Extraction from multiple sources
2. Data cleaning and transformation
3. Loading into Bronze, Silver, and Gold layers
4. Scheduled automation using Apache Airflow

---

## Tech Stack

| Category        | Tool / Technology                    |
|-----------------|-------------------------------------|
| Database        | SQL Server Express                  |
| IDE / Querying  | SQL Server Management Studio (SSMS) |
| Architecture    | Medallion Architecture, Star Schema |
| Orchestration   | Apache Airflow                       |
| Version Control | Git & GitHub                         |
| Diagramming     | Draw.io                              |
| Documentation   | Notion                               |

---

## Business Impact & Objectives

- Empower stakeholders to analyze customer behavior and improve marketing strategies  
- Track product performance to optimize inventory and pricing  
- Forecast sales trends and revenue growth accurately

---

## How to Run

Clone the repository:

```bash
git clone https://github.com/dvy246/data-warehouse-project.git

Follow ETL pipeline setup instructions in the documentation for automated scheduling with Apache Airflow.
```

## Contact

Connect with me on LinkedIn: [Divy Yadav](https://www.linkedin.com/in/dvy246/)


