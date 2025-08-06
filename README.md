# Proyek Data Warehouse

Welcome to the **SQL Data Warehouse** repository! 🚀 
This project is my learning effort in understanding the basic concepts and implementation of **data warehousing**, starting from building a simple data warehouse to generating initial insights from the data. This project was created as part of a personal portfolio, with reference to common practices in the field of **data engineering** and **analytics**.


---

## 🏗️ Arsitektur Data

The data architecture of this project follows the Medallion Architecture approach with three layers: **Bronze**, **Silver**, and **Gold**.
![Data Architecture](docs/data_architecture.png)

1. **Bronze Layer**: Stores raw data directly from the source system. The data is retrieved from a CSV file and inserted into a SQL Server Database.
2. **Silver Layer**: This layer includes cleansing, standardization, and normalization before analysis.
3. **Gold Layer**: Stores business-ready data, modeled in the form of a *star schema* for reporting and analysis purposes.

---

## 📖 Project Summary

This project includes:

1. **Data Architecture**: Design a modern data warehouse using Medallion Architecture (**Bronze**, **Silver**, **Gold**).
2. **ETL Pipelines**: The process of extracting, transforming, and loading data from source systems into the data warehouse.
3. **Data Modeling**: Developing fact tables and dimensions optimized for analytical Query.
4. **Analytics & Reporting**: Here is an advanced repository for analytics and creating reports.


   [![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/afrijalrasya/SQL-data-analytics-project)

---

## 🚀 Project Specifications

### Building Data Warehouse

#### Objective
Develop a small-scale data warehouse using SQL Server to consolidate sales data, so that data-based reporting and decision-making can be done.

#### Spesifikasi
- **Source Data**: Data is imported from two source systems (ERP and CRM) in the form of CSV files.
- Data Quality**: Performed data quality cleaning and improvement before analysis.
- **Integration**: Combined both sources into one data model that is easy to use for analytics purposes.
- Scope**: Focuses on recent datasets only, does not include historical data.
- Documentation**: Provide clear data model documentation to support the needs of business and analytics teams.


## 📂 Repository Structure
```
data-warehouse-project/
│
├── datasets/                           # Raw datasets used in the project (ERP and CRM data)
│
├── docs/                               # Project documentation and architectural details
│   ├── etl.drawio                      # Draw.io file that displays various ETL techniques and methods
│   ├── data_architecture.drawio        # Draw.io file that describes the project architecture
│   ├── data_catalog.md                 # Dataset catalog, including field descriptions and metadata
│   ├── data_flow.drawio                # Data flowchart in Draw.io format
│   ├── data_models.drawio              # Draw.io file for the data model (star schema)
│   ├── naming-conventions.md           # Consistent naming guidelines for tables, columns, and files
│
├── scripts/                            # SQL scripts for ETL and transformation processes
│   ├── bronze/                         # Scripts for raw data extraction and loading
│   ├── silver/                         # Scripts for data cleaning and transformation
│   ├── gold/                           # Scripts for building analytic models
│
├── tests/                              # Test scripts and data quality check files
│
├── README.md                           # Project summary and usage guide
├── LICENSE                             # License information for this repository
```
---

## 🌟 Tentang Saya

Hello, I am **Afrijal Rasya Putra**, an Informatics student who is interested in exploring the world of **Data Engineering**. Although it's still early in my college journey, I'm excited to learn about how data is processed and turned into meaningful information.

📌 I am currently learning:
- **Python** programming
- **SQL** and the basics of data manipulation
- Basic concepts of **ETL** and data pipeline workflows

I love learning and exploring new things, especially those related to data. I'm currently building my skills gradually and looking for opportunities to join the industry to give me real experience in this field.

📫 Feel free to connect or discuss-I'd love to learn and grow together!

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/afrijalrasyaputra/)
