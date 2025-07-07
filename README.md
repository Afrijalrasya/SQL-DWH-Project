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
4. **Analitik & Pelaporan**: Berikut adalah repositori lanjutan untuk analitik dan membuat laporan.

   [![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/afrijalrasya/SQL-data-analytics-project)

---

## 🛠️ Tautan & Alat Penting

Semua sumber daya GRATIS!
- **[Datasets](datasets/):** Akses ke dataset proyek (file CSV).
- **[SQL Server Express](https://www.microsoft.com/en-us/sql-server/sql-server-downloads):** Server ringan untuk menjalankan database SQL.
- **[SQL Server Management Studio (SSMS)](https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16):** Antarmuka GUI untuk mengelola database.
- **[DrawIO](https://www.drawio.com/):** Mendesain arsitektur data, model, alur ETL, dan diagram lainnya.
---

## 🚀 Spesifikasi Proyek

### Membangun Data Warehouse =

#### Tujuan
Mengembangkan data warehouse skala kecil menggunakan SQL Server untuk mengonsolidasikan data penjualan, sehingga dapat dilakukan pelaporan dan pengambilan keputusan berbasis data.

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
├── datasets/                           # Dataset mentah yang digunakan dalam proyek (data ERP dan CRM)
│
├── docs/                               # Dokumentasi proyek dan detail arsitektur
│   ├── etl.drawio                      # File Draw.io yang menampilkan berbagai teknik dan metode ETL
│   ├── data_architecture.drawio        # File Draw.io yang menggambarkan arsitektur proyek
│   ├── data_catalog.md                 # Katalog dataset, termasuk deskripsi field dan metadata
│   ├── data_flow.drawio                # Diagram alur data dalam format Draw.io
│   ├── data_models.drawio              # File Draw.io untuk model data (star schema)
│   ├── naming-conventions.md           # Panduan penamaan yang konsisten untuk tabel, kolom, dan file
│
├── scripts/                            # Skrip SQL untuk proses ETL dan transformasi
│   ├── bronze/                         # Skrip untuk ekstraksi dan pemuatan data mentah
│   ├── silver/                         # Skrip untuk pembersihan dan transformasi data
│   ├── gold/                           # Skrip untuk membangun model analitik
│
├── tests/                              # Skrip pengujian dan file pengecekan kualitas data
│
├── README.md                           # Ringkasan proyek dan panduan penggunaan
├── LICENSE                             # Informasi lisensi untuk repositori ini

```
---

## 🌟 Tentang Saya

Halo! Saya **Afrijal Rasya Putra**, seorang **mahasiswa Informatika** yang sedang tertarik mendalami dunia **Data Engineering**. Meskipun masih di awal perjalanan kuliah, saya sangat antusias belajar tentang bagaimana data diproses dan diubah menjadi informasi yang bermakna.

📌 Saat ini saya sedang belajar:
- Pemrograman **Python**
- **SQL** dan dasar-dasar manipulasi data
- Konsep dasar **ETL** dan alur kerja data pipeline

Saya senang belajar dan mengeksplorasi hal-hal baru, terutama yang berkaitan dengan data. Saat ini saya sedang membangun keterampilan secara bertahap dan terus mencari peluang untuk berkembang. Saya juga terbuka untuk **magang** atau **proyek kolaboratif** yang bisa memberi saya pengalaman langsung dan membantu proses belajar saya.

📫 Jangan ragu untuk terhubung atau berdiskusi—saya senang bisa belajar dan berkembang bersama!

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/afrijalrasyaputra/)
