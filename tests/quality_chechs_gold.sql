/*
===============================================================================
Quality Checks
===============================================================================
Tujuan script:
    - Script ini melakukan pemeriksaan kualitas untuk memvalidasi integritas, konsistensi,
      dan akurasi Gold layer. Pemeriksaan ini memastikan:
    - Keunikan surrogate key(key pengganti) di dalam tabel dimensi.
    - Integritas referensial antara tabel fakta dan tabel dimensi.
    - Validasi hubungan dalam model data untuk tujuan analisis.

Catatan penggunaan:
    - Mencari dan menyelesaikan setiap ketidaksesuaian data yang ditemukan selama pemeriksaan
===============================================================================
*/

-- ====================================================================
-- Mengecek 'gold.dim_customers'
-- ====================================================================
-- Memeriksa keunikan dari Customer Key pada dimensi customer
-- Ekspektasi: Tidak ada hasil
SELECT 
    customer_key,
    COUNT(*) AS duplicate_count
FROM gold.dim_customers
GROUP BY customer_key
HAVING COUNT(*) > 1;

-- ====================================================================
-- Mengecek 'gold.product_key'
-- ====================================================================
-- Memeriksa keunikan dari Product Key dalam dimensi produk
-- Ekspektasi: Tidak ada hasil
SELECT 
    product_key,
    COUNT(*) AS duplicate_count
FROM gold.dim_products
GROUP BY product_key
HAVING COUNT(*) > 1;

-- ====================================================================
-- Mengecek 'gold.fact_sales'
-- ====================================================================
-- Memeriksa konektivitas model data antara fakta dan dimensi
SELECT * 
FROM gold.fact_sales f
LEFT JOIN gold.dim_customers c
ON c.customer_key = f.customer_key
LEFT JOIN gold.dim_products p
ON p.product_key = f.product_key
WHERE p.product_key IS NULL OR c.customer_key IS NULL  
