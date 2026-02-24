-- Check for unwanted space
SELECT * FROM bronze.erp_px_cat_g1v2
WHERE cat != TRIM(cat) OR subcat != TRIM(subcat) 
OR maintenance != TRIM(maintenance) 

-- Data Standardization & Consistency
SELECT DISTINCT
subcat  FROM bronze.erp_px_cat_g1v2

SELECT DISTINCT
maintenance FROM bronze.erp_px_cat_g1v2

SELECT DISTINCT
id FROM bronze.erp_px_cat_g1v2