# 📚 Katalog Data untuk Gold Layer

## Ringkasan
Gold Layer merupakan representasi data pada tingkat bisnis, yang telah siap digunakan untuk keperluan analitik dan pelaporan. Lapisan ini terdiri dari 
**tabel dimensi** dan **tabel fakta** yang dirancang untuk menangkap metrik-metrik bisnis tertentu.

---

### 1. **gold.dim_customers**
- **Tujuan:** Menyimpan informasi pelanggan yang telah diperkaya dengan data demografis dan geografis.
- **Kolom:**

| Nama Kolom        | Tipe Data     | Deskripsi                                                                                         |
|-------------------|---------------|---------------------------------------------------------------------------------------------------|
| customer_key      | INT           | Surrogate key yang secara unik mengidentifikasi setiap pelanggan dalam tabel dimensi.            |
| customer_id       | INT           | ID numerik unik yang diberikan untuk setiap pelanggan.                                            |
| customer_number   | NVARCHAR(50)  | Kode alfanumerik pelanggan untuk kebutuhan pelacakan dan referensi.                              |
| first_name        | NVARCHAR(50)  | Nama depan pelanggan sesuai dengan data sistem.                                                  |
| last_name         | NVARCHAR(50)  | Nama belakang atau nama keluarga pelanggan.                                                      |
| country           | NVARCHAR(50)  | Negara tempat tinggal pelanggan (contoh: 'Australia').                                           |
| marital_status    | NVARCHAR(50)  | Status pernikahan pelanggan (contoh: 'Married', 'Single').                                       |
| gender            | NVARCHAR(50)  | Jenis kelamin pelanggan (contoh: 'Male', 'Female', 'n/a').                                       |
| birthdate         | DATE          | Tanggal lahir pelanggan, dalam format YYYY-MM-DD (contoh: 1971-10-06).                           |
| create_date       | DATE          | Tanggal dan waktu saat data pelanggan dibuat dalam sistem.                                       |

---

### 2. **gold.dim_products**
- **Tujuan:** Menyediakan informasi produk dan atribut-atributnya.
- **Kolom:**

| Nama Kolom           | Tipe Data     | Deskripsi                                                                                             |
|----------------------|---------------|-------------------------------------------------------------------------------------------------------|
| product_key          | INT           | Surrogate key yang secara unik mengidentifikasi setiap produk di tabel dimensi produk.                |
| product_id           | INT           | ID unik yang diberikan untuk produk, digunakan untuk pelacakan internal.                              |
| product_number       | NVARCHAR(50)  | Kode alfanumerik terstruktur yang merepresentasikan produk, biasa digunakan dalam inventori.          |
| product_name         | NVARCHAR(50)  | Nama produk yang deskriptif, termasuk detail seperti tipe, warna, dan ukuran.                         |
| category_id          | NVARCHAR(50)  | ID unik untuk kategori produk, menghubungkan ke klasifikasi tingkat atas.                            |
| category             | NVARCHAR(50)  | Klasifikasi umum dari produk (contoh: Bikes, Components) untuk mengelompokkan item terkait.           |
| subcategory          | NVARCHAR(50)  | Klasifikasi lebih spesifik dari produk di dalam kategori, seperti jenis produk.                       |
| maintenance_required | NVARCHAR(50)  | Menunjukkan apakah produk memerlukan perawatan (contoh: 'Yes', 'No').                                |
| cost                 | INT           | Biaya atau harga dasar dari produk, dalam satuan mata uang utuh.                                      |
| product_line         | NVARCHAR(50)  | Lini atau seri produk tempat produk tersebut termasuk (contoh: Road, Mountain).                       |
| start_date           | DATE          | Tanggal mulai produk tersedia untuk dijual atau digunakan.                                            |

---

### 3. **gold.fact_sales**
- **Tujuan:** Menyimpan data transaksi penjualan untuk keperluan analitik.
- **Kolom:**

| Nama Kolom     | Tipe Data     | Deskripsi                                                                                           |
|----------------|---------------|-------------------------------------------------------------------------------------------------------|
| order_number   | NVARCHAR(50)  | ID unik alfanumerik untuk setiap pesanan penjualan (contoh: 'SO54496').                              |
| product_key    | INT           | Surrogate key yang menghubungkan pesanan dengan tabel dimensi produk.                                |
| customer_key   | INT           | Surrogate key yang menghubungkan pesanan dengan tabel dimensi pelanggan.                             |
| order_date     | DATE          | Tanggal saat pesanan dibuat.                                                                         |
| shipping_date  | DATE          | Tanggal saat pesanan dikirim ke pelanggan.                                                            |
| due_date       | DATE          | Tanggal jatuh tempo pembayaran pesanan.                                                               |
| sales_amount   | INT           | Nilai total penjualan untuk item tersebut, dalam satuan mata uang utuh (contoh: 25).                 |
| quantity       | INT           | Jumlah unit produk yang dipesan untuk item tersebut (contoh: 1).                                      |
| price          | INT           | Harga per unit produk untuk item tersebut, dalam satuan mata uang utuh (contoh: 25).                 |
