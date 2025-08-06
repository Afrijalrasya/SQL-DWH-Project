/*
===============================================================================
Quality Checks
===============================================================================
Tujuan script:
    - This script performs quality checks to validate the integrity, consistency,
 and accuracy of the Gold layer. This check ensures:
    - Uniqueness of surrogate keys in the dimension table.
    - Referential integrity between fact tables and dimension tables.
    - Validate the data from the model and the analysis.

Usage records:
    - Find and resolve any data mismatches found during the check
===============================================================================
*/

SELECT 
    customer_key,
    COUNT(*) AS duplicate_count
FROM gold.dim_customers
GROUP BY customer_key
HAVING COUNT(*) > 1;

-- ====================================================================
-- Checking 'gold.product_key'
-- ====================================================================
-- Checks the uniqueness of the Product Key in the product dimension
-- Expectation: No result
SELECT 
    product_key,
    COUNT(*) AS duplicate_count
FROM gold.dim_products
GROUP BY product_key
HAVING COUNT(*) > 1;

-- ====================================================================
-- Checking 'gold.fact_sales'
-- ====================================================================
-- Checking connectivity of data model between fact and dimensi 
SELECT * 
FROM gold.fact_sales f
LEFT JOIN gold.dim_customers c
ON c.customer_key = f.customer_key
LEFT JOIN gold.dim_products p
ON p.product_key = f.product_key
WHERE p.product_key IS NULL OR c.customer_key IS NULL  
