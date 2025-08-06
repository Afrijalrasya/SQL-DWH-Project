/*
===============================================================================
Checking data quality
===============================================================================
Script purpose:
    This script performs data quality checks such as consistency, accuracy, 
 and data standardization on the 'silver' layer. The checks performed include:
    - Empty or duplicate primary keys.
    - Unwanted spaces in strings.
    - Data standardization and consistency.
    - Invalid date ranges and sequences.
    - Data consistency between related fields.

Usage :
    - Run this check after the data has been loaded into the Silver layer.
    - Look for and resolve any discrepancies found during the check.
===============================================================================
*/



-- ====================================================================
-- Checking 'silver.crm_cust_info'
-- ======================================================================
-- Checking for empty or duplicate primary keys
-- Expected: No results
SELECT 
    cst_id,
    COUNT(*) 
FROM silver.crm_cust_info
GROUP BY cst_id
HAVING COUNT(*) > 1 OR cst_id IS NULL;

-- Memeriksa spasi yang tidak diinginkan
-- Ekspektasi: Tidak ada hasil
SELECT 
    cst_key 
FROM silver.crm_cust_info
WHERE cst_key != TRIM(cst_key);

-- Standarisasi dan konsistensi data
SELECT DISTINCT 
    cst_marital_status 
FROM silver.crm_cust_info;

-- ====================================================================
-- Mengecek 'silver.crm_prd_info'
-- ====================================================================
-- Memeriksa Primar key yang kosong atau duplikat
-- Ekspektasi: Tidak ada hasil
SELECT 
    prd_id,
    COUNT(*) 
FROM silver.crm_prd_info
GROUP BY prd_id
HAVING COUNT(*) > 1 OR prd_id IS NULL;

-- Memeriksa spasi yang tidak diinginkan
-- Expectation: No Results
SELECT 
    prd_nm 
FROM silver.crm_prd_info
WHERE prd_nm != TRIM(prd_nm);

-- Check for NULLs or Negative Values in Cost
-- Ekspektasi: Tidak ada hasil
SELECT 
    prd_cost 
FROM silver.crm_prd_info
WHERE prd_cost < 0 OR prd_cost IS NULL;

-- Standarisasi dan konsistensi data
SELECT DISTINCT 
    prd_line 
FROM silver.crm_prd_info;

-- Memeriksa rentan data yang tidak valid (Start Date > End Date)
-- Ekspektasi: Tidak ada hasil
SELECT 
    * 
FROM silver.crm_prd_info
WHERE prd_end_dt < prd_start_dt;

-- ====================================================================
-- Mengecek 'silver.crm_sales_details'
-- ====================================================================
-- Memeriksa tanggal yang tidak valid
-- Ekspektasi: Tidak ada hasil (artinya semua tanggal valid)
SELECT 
    NULLIF(sls_due_dt, 0) AS sls_due_dt 
FROM bronze.crm_sales_details
WHERE sls_due_dt <= 0 
    OR LEN(sls_due_dt) != 8 
    OR sls_due_dt > 20500101 
    OR sls_due_dt < 19000101;

-- Mengecek Date order yang tidak valid(Order Date > Shipping/Due Dates)
-- Ekspektasi: tidak ada hasil
SELECT 
    * 
FROM silver.crm_sales_details
WHERE sls_order_dt > sls_ship_dt 
   OR sls_order_dt > sls_due_dt;

-- Memeriksa konsistensi Data: Sales = Quantity * Price
-- Ekspektasi: Tidak ada hasil
SELECT DISTINCT 
    sls_sales,
    sls_quantity,
    sls_price 
FROM silver.crm_sales_details
WHERE sls_sales != sls_quantity * sls_price
   OR sls_sales IS NULL 
   OR sls_quantity IS NULL 
   OR sls_price IS NULL
   OR sls_sales <= 0 
   OR sls_quantity <= 0 
   OR sls_price <= 0
ORDER BY sls_sales, sls_quantity, sls_price;

-- ====================================================================
-- Memeriksa 'silver.erp_cust_az12'
-- ====================================================================
-- Identifikasi tanggal di luar rentang
-- Ekspektasi: tanggal lahir antara 1924-01-01 dan Hari ini
SELECT DISTINCT 
    bdate 
FROM silver.erp_cust_az12
WHERE bdate < '1924-01-01' 
   OR bdate > GETDATE();

-- Standarisasi dan Konsistensi data
SELECT DISTINCT 
    gen 
FROM silver.erp_cust_az12;

-- ====================================================================
-- Memeriksa 'silver.erp_loc_a101'
-- ====================================================================
-- Standarisasi dan Konsistensi data
SELECT DISTINCT 
    cntry 
FROM silver.erp_loc_a101
ORDER BY cntry;

-- ====================================================================
-- Mengecek 'silver.erp_px_cat_g1v2'
-- ====================================================================
-- Memeriksa spasi yang tidak diinginkan
-- Expectation: No Results
SELECT 
    * 
FROM silver.erp_px_cat_g1v2
WHERE cat != TRIM(cat) 
   OR subcat != TRIM(subcat) 
   OR maintenance != TRIM(maintenance);

-- Standarisasi dan konsitensi data
SELECT DISTINCT 
    maintenance 
FROM silver.erp_px_cat_g1v2;

