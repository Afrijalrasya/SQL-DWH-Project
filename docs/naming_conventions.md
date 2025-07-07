# **Naming Conventions**

Dokumen ini menjelaskan standar penamaan (naming convention) yang digunakan untuk skema, tabel, view, kolom, dan objek lainnya dalam data warehouse.

## **Daftar Isi**

1. [Prinsip Umum](#prinsip-umum)
2. [Standar Penamaan Tabel](#standar-penamaan-tabel)
   - [Aturan Bronze](#aturan-bronze)
   - [Aturan Silver](#aturan-silver)
   - [Aturan Gold](#aturan-gold)
3. [Standar Penamaan Kolom](#standar-penamaan-kolom)
   - [Surrogate Key](#surrogate-key)
   - [Kolom Teknis](#kolom-teknis)
4. [Stored Procedure](#stored-procedure)

---

## **Prinsip Umum**

- **Format Penamaan**: Gunakan `snake_case`, dengan huruf kecil dan pemisah garis bawah (`_`) antar kata.
- **Bahasa**: Gunakan Bahasa Inggris untuk semua nama.
- **Hindari Kata Terlarang**: Jangan gunakan kata-kata yang termasuk reserved word dalam SQL sebagai nama objek.

## **Standar Penamaan Tabel**

### **Aturan Bronze**
- Nama tabel harus diawali dengan nama sistem sumber, dan nama tabel mengikuti nama asli dari sumber tanpa diubah.
- **`<sourcesystem>_<entity>`**  
  - `<sourcesystem>`: Nama sistem sumber (contoh: `crm`, `erp`)  
  - `<entity>`: Nama tabel asli dari sistem sumber  
  - Contoh: `crm_customer_info` → Data informasi pelanggan dari sistem CRM.

### **Aturan Silver**
- Sama seperti aturan Bronze: nama tabel diawali dengan nama sistem sumber dan tetap mengikuti nama asli tanpa diubah.
- **`<sourcesystem>_<entity>`**  
  - `<sourcesystem>`: Nama sistem sumber (contoh: `crm`, `erp`)  
  - `<entity>`: Nama tabel asli dari sistem sumber  
  - Contoh: `crm_customer_info` → Data informasi pelanggan dari sistem CRM.

### **Aturan Gold**
- Gunakan nama tabel yang bermakna dan relevan dengan konteks bisnis, diawali dengan prefix kategori.
- **`<category>_<entity>`**  
  - `<category>`: Menunjukkan jenis tabel, seperti `dim` (dimension) atau `fact` (fact table)  
  - `<entity>`: Nama deskriptif yang sesuai dengan domain bisnis (contoh: `customers`, `products`, `sales`)  
  - Contoh:
    - `dim_customers` → Tabel dimensi untuk data pelanggan  
    - `fact_sales` → Tabel fakta berisi transaksi penjualan

#### **Glosarium Pola Penamaan Kategori**

| Pola        | Makna                              | Contoh                                   |
|-------------|------------------------------------|------------------------------------------|
| `dim_`      | Tabel dimensi                      | `dim_customer`, `dim_product`            |
| `fact_`     | Tabel fakta                        | `fact_sales`                             |
| `report_`   | Tabel laporan                      | `report_customers`, `report_sales_monthly`   |

## **Standar Penamaan Kolom**

### **Surrogate Key**  
- Setiap primary key di tabel dimensi harus menggunakan akhiran `_key`.
- **`<table_name>_key`**  
  - `<table_name>`: Nama tabel atau entitas yang dimaksud  
  - `_key`: Menandakan bahwa ini adalah surrogate key  
  - Contoh: `customer_key` → Surrogate key di tabel `dim_customers`

### **Kolom Teknis**
- Kolom sistem atau metadata harus diawali dengan prefix `dwh_` dan diikuti dengan nama deskriptif yang menjelaskan fungsinya.
- **`dwh_<column_name>`**  
  - `dwh`: Prefix khusus untuk metadata sistem  
  - `<column_name>`: Nama kolom yang menjelaskan tujuan kolom tersebut  
  - Contoh: `dwh_load_date` → Kolom untuk mencatat tanggal pemuatan data ke warehouse

## **Stored Procedure**

- Stored procedure untuk pemuatan data harus mengikuti pola penamaan:
- **`load_<layer>`**
  
  - `<layer>`: Menunjukkan layer tujuan, seperti `bronze`, `silver`, atau `gold`  
  - Contoh:  
    - `load_bronze` → Prosedur untuk memuat data ke layer Bronze  
    - `load_silver` → Prosedur untuk memuat data ke layer Silver
