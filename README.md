# Proyek Data Warehouse

Selamat datang di repositori **Data Warehouse**! 🚀  
Proyek ini merupakan upaya pembelajaran saya dalam memahami konsep dan implementasi dasar **data warehousing**, mulai dari membangun gudang data sederhana untuk menghasilkan insight awal dari data. Proyek ini dibuat sebagai bagian dari portofolio pribadi, dengan mengacu pada praktik umum di bidang **data engineering** dan **analitik**.

---

## 🏗️ Arsitektur Data

Arsitektur data proyek ini mengikuti pendekatan Medallion Architecture dengan tiga lapisan: **Bronze**, **Silver**, dan **Gold**.
![Data Architecture](docs/data_architecture.png)

1. **Bronze Layer**: Menyimpan data mentah langsung dari sistem sumber. Data diambil dari file CSV dan dimasukkan ke dalam SQL Server Database.
2. **Silver Layer**: Lapisan ini mencakup proses pembersihan data (cleansing), standarisasi, dan normalisasi sebelum dianalisis.
3. **Gold Layer**: Menyimpan data yang siap pakai secara bisnis, dimodelkan dalam bentuk *star schema* untuk keperluan pelaporan dan analisis.

---

## 📖 Ringkasan Proyek

Proyek ini mencakup:

1. **Arsitektur Data**: Mendesain data warehouse modern menggunakan Medallion Architecture (**Bronze**, **Silver**, **Gold**).
2. **ETL Pipelines**: Proses ekstraksi, transformasi, dan pemuatan data dari sistem sumber ke dalam warehouse.
3. **Pemodelan Data**: Mengembangkan tabel fakta dan dimensi yang dioptimalkan untuk Query analitik.
4. **Analitik & Pelaporan**: Membangun laporan dan dasbor berbasis SQL untuk menghasilkan insight yang dapat ditindaklanjuti.

🎯 Repositori ini sangat bermanfaat untuk profesional dan mahasiswa yang ingin menampilkan keahlian dalam:
- Pengembangan SQL
- Arsitektur Data
- Data Engineering  
- Pengembangan Pipeline ETL  
- Pemodelan Data  
- Analitik Data  

---

## 🛠️ Tautan & Alat Penting

Semua sumber daya GRATIS!
- **[Datasets](datasets/):** Akses ke dataset proyek (file CSV).
- **[SQL Server Express](https://www.microsoft.com/en-us/sql-server/sql-server-downloads):** Server ringan untuk menjalankan database SQL.
- **[SQL Server Management Studio (SSMS)](https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16):** Antarmuka GUI untuk mengelola database.
- **[DrawIO](https://www.drawio.com/):** Mendesain arsitektur data, model, alur ETL, dan diagram lainnya.
---

## 🚀 Kebutuhan Proyek

### Membangun Data Warehouse (Data Engineering)

#### Tujuan
Mengembangkan data warehouse modern menggunakan SQL Server untuk mengonsolidasikan data penjualan, sehingga dapat dilakukan pelaporan dan pengambilan keputusan berbasis data.

#### Spesifikasi
- **Sumber Data**: Data diimpor dari dua sistem sumber (ERP dan CRM) dalam bentuk file CSV.
- **Kualitas Data**: Melakukan pembersihan dan perbaikan kualitas data sebelum dianalisis.
- **Integrasi**: Menggabungkan kedua sumber menjadi satu model data yang mudah digunakan untuk keperluan analitik.
- **Ruang Lingkup**: Fokus pada dataset terbaru saja, tidak mencakup historisasi data.
- **Dokumentasi**: Menyediakan dokumentasi model data secara jelas untuk mendukung kebutuhan tim bisnis dan analitik.
--
## 📂 Repository Structure
```
data-warehouse-project/
│
├── datasets/                           # Raw datasets used for the project (ERP and CRM data)
│
├── docs/                               # Project documentation and architecture details
│   ├── etl.drawio                      # Draw.io file shows all different techniquies and methods of ETL
│   ├── data_architecture.drawio        # Draw.io file shows the project's architecture
│   ├── data_catalog.md                 # Catalog of datasets, including field descriptions and metadata
│   ├── data_flow.drawio                # Draw.io file for the data flow diagram
│   ├── data_models.drawio              # Draw.io file for data models (star schema)
│   ├── naming-conventions.md           # Consistent naming guidelines for tables, columns, and files
│
├── scripts/                            # SQL scripts for ETL and transformations
│   ├── bronze/                         # Scripts for extracting and loading raw data
│   ├── silver/                         # Scripts for cleaning and transforming data
│   ├── gold/                           # Scripts for creating analytical models
│
├── tests/                              # Test scripts and quality files
│
├── README.md                           # Project overview and instructions
├── LICENSE                             # License information for the repository
├── .gitignore                          # Files and directories to be ignored by Git
└── requirements.txt                    # Dependencies and requirements for the project
```
---
