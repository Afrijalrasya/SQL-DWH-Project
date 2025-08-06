# ETL Methods

ETL (Extract, Transform, Load) methods and techniques used in this project. The ETL process consists of three main stages: **Extract,** **Transform,** and **Load,**.

---

## 🟦 1. Extract

- **Extract Method**: Pull Extract 
 Data is pulled directly from the source (system file).

- **Extract Type**: Full Extract 
 All data is retrieved each time the process is run, without considering previous changes.

- Extract Technique**: File Parsing 
 Extraction is performed by reading and parsing a (CSV) file.
---

## Transform

Data transformation is performed to clean, consolidate, and customize data to fit analytic or reporting needs. The transformation process includes:

### 🔹 Data Cleaning
- Removing duplicates
- Data filtering
- Handling missing data
- Handling invalid values
- Handling unwanted spaces
- Outlier detection
- Data type conversion

### 🔹 General Transformation
- **Data Enrichment**: Addition of additional information or data.
- **Data Integration**: Merging of multiple data sources.
- Derived Columns**: Creating new columns from existing columns.
- **Normalization & Standardization**: Organizing values to be on a consistent scale.
- **Business Rules & Logic**: Apply business logic and rules as needed.
- **Data Aggregation**: Grouping and aggregate calculations (such as sum, average).



---

## 🟩 3. Load

- **Processing Type**: Batch Processing 
 Data is loaded periodically in large amounts at specific times.

- **Load Method**: Full Load (Truncate & Insert) 
 The target table is first emptied (truncate) and then all data is reloaded (insert).

- **Slowly Changing Dimension (SCD)**: Type 1 - Overwrite 
 Changes to historical data are immediately overwritten with new values (no change history is kept).



---
