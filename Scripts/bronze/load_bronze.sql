/*
===============================================================================
Stored Procedure: Load Bronze Layer (Source -> Bronze)
===============================================================================
Script Purpose:
    This stored procedure loads data into the 'bronze' schema from external CSV files. 
    It performs the following actions:
    - Truncates the bronze tables before loading data.
    - Uses the `BULK INSERT` command to load data from csv Files to bronze tables.

Parameters:
    None. 
	  This stored procedure does not accept any parameters or return any values.

Usage Example:
    EXEC bronze.load_bronze;
===============================================================================
*/


USE DataWarehouseDB;
GO

TRUNCATE TABLE bronze.crm_cust_info;
BULK INSERT bronze.crm_cust_info
FROM '/var/opt/mssql/datasets/cust_info.csv'
WITH (
    FIELDTERMINATOR = ',',
    FIRSTROW = 2,
    TABLOCK
);


SELECT COUNT(*) FROM bronze.crm_cust_info;

TRUNCATE TABLE bronze.crm_prd_info;
BULK INSERT bronze.crm_prd_info
FROM '/var/opt/mssql/datasets/prd_info.csv'
WITH (
FIELDTERMINATOR = ',',
FIRSTROW = 2,
TABLOCK
);

SELECT COUNT(*) FROM bronze.crm_prd_info;

TRUNCATE TABLE bronze.crm_sales_details;
BULK INSERT bronze.crm_sales_details
FROM '/var/opt/mssql/datasets/sales_details.csv'
WITH (
FIELDTERMINATOR = ',',
FIRSTROW = 2,
TABLOCK
);

SELECT COUNT(*) FROM bronze.crm_sales_details;

TRUNCATE TABLE bronze.erp_loc_a101
BULK INSERT bronze.erp_loc_a101
FROM '/var/opt/mssql/datasets/loc_a101.csv'
WITH (
FIELDTERMINATOR = ',',
FIRSTROW = 2,
TABLOCK
);

SELECT COUNT(*) FROM bronze.erp_loc_a101;