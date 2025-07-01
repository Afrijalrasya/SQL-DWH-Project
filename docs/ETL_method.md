# Metode ETL

Metode dan teknik ETL (Extract, Transform, Load) yang digunakan dalam proyek ini. Proses ETL terdiri dari tiga tahap utama: **Extract (Ekstraksi)**, **Transform (Transformasi)**, dan **Load (Pemuatan)**.

---

## 🟦 1. Extract (Ekstraksi)

- **Metode Ekstrak**: Pull Extract  
  Data ditarik langsung dari sumber (misalnya API, database, atau file sistem).

- **Tipe Ekstrak**: Full Extract  
  Seluruh data diambil setiap kali proses dijalankan, tanpa mempertimbangkan perubahan sebelumnya.

- **Teknik Ekstrak**: File Parsing  
  Ekstraksi dilakukan dengan membaca dan mem-parsing file (seperti CSV, JSON, atau Excel).

---

## 🟧 2. Transform (Transformasi)

Transformasi data dilakukan untuk membersihkan, mengkonsolidasikan, dan menyesuaikan data agar sesuai dengan kebutuhan analitik atau pelaporan. Proses transformasi meliputi:

### 🔹 Pembersihan Data (Data Cleansing)
- Menghapus duplikat (Remove Duplicates)
- Penyaringan data (Data Filtering)
- Menangani data hilang (Handling Missing Data)
- Menangani nilai tidak valid (Handling Invalid Values)
- Menangani spasi yang tidak diinginkan (Handling Unwanted Spaces)
- Deteksi outlier (Outlier Detection)
- Pengubahan tipe data (Data Type Casting)

### 🔹 Transformasi Umum
- **Data Enrichment**: Penambahan informasi atau data tambahan.
- **Data Integration**: Penggabungan dari beberapa sumber data.
- **Derived Columns**: Membuat kolom baru dari kolom yang sudah ada.
- **Normalisasi & Standarisasi**: Mengatur nilai agar berada pada skala yang konsisten.
- **Business Rules & Logic**: Menerapkan logika dan aturan bisnis sesuai kebutuhan.
- **Data Aggregation**: Pengelompokan dan perhitungan agregat (seperti sum, average).

---

## 🟩 3. Load (Pemuatan)

- **Tipe Pemrosesan**: Batch Processing  
  Data dimuat secara berkala dalam jumlah besar pada waktu tertentu.

- **Metode Load**: Full Load (Truncate & Insert)  
  Tabel target dikosongkan terlebih dahulu (truncate) lalu seluruh data dimuat ulang (insert).

- **Slowly Changing Dimension (SCD)**: Type 1 – Overwrite  
  Perubahan pada data historis langsung ditimpa dengan nilai baru (tidak menyimpan riwayat perubahan).

---

## 📌 Catatan Tambahan

Dokumentasi ini dapat diperluas sesuai kebutuhan proyek, seperti menambahkan jadwal ETL, monitoring log, atau integrasi ke data warehouse.

