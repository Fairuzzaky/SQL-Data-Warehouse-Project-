select * from bronze.crm_prd_info

-- Check for nulls and duplicate values
-- Expectation result : No result
SELECT 
prd_id,
COUNT(*) as Total 
FROM bronze.crm_prd_info
GROUP BY prd_id 
HAVING COUNT(*) > 1 OR prd_id IS NULL

-- Check for unwanted space in those values
-- Expectation result : No result
SELECT prd_nm 
FROM bronze.crm_prd_info
WHERE prd_nm != TRIM(prd_nm)

-- Check for invalid data in numerical type (Nulls or negative numbers)
-- Expectation result : No result
SELECT prd_cost
FROM bronze.crm_prd_info
WHERE prd_cost IS NULL OR prd_cost < 0

-- Data standardization & consistency
SELECT DISTINCT prd_line
FROM bronze.crm_prd_info

-- Check for invalid date orders
SELECT *
from bronze.crm_prd_info
where prd_end_dt < prd_start_dt OR 
prd_start_dt IS NULL

