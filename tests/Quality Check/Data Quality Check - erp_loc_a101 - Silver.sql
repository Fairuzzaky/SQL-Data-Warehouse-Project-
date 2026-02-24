--Check unwanted characters 
SELECT 
cid
FROM bronze.erp_loc_a101 
WHERE cid  IN 
(SELECT cst_key FROM silver.crm_cust_info)

-- Data Standardization & Consistency
SELECT DISTINCT cntry as old_country,
CASE WHEN TRIM(cntry) IN ('US','USA') THEN 'United States'
	 WHEN TRIM(cntry) = 'DE' THEN 'Germany'
	 WHEN TRIM(cntry) = '' OR cntry IS NULL THEN 'n/a'
	 ELSE cntry
END AS cntry FROM bronze.erp_loc_a101