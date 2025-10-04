/*
===============================================================================
Table: bronze.load_config
===============================================================================
Purpose:
    Stores metadata for the bronze layer loading process. 
    The stored procedure will read from this table to dynamically
    load files into their respective target tables.
===============================================================================
*/

USE DataWarehouseDB;
GO

-- Create the configuration table if it doesn't exist
IF OBJECT_ID('bronze.load_config', 'U') IS NULL
BEGIN
    CREATE TABLE bronze.load_config (
        config_id INT IDENTITY(1,1) PRIMARY KEY,
        source_file_name NVARCHAR(255) NOT NULL,
        target_schema_name NVARCHAR(128) NOT NULL,
        target_table_name NVARCHAR(128) NOT NULL,
        first_row_to_load INT NOT NULL DEFAULT 2,
        is_active BIT NOT NULL DEFAULT 1,
        created_date DATETIME2(3) DEFAULT GETDATE()
    );
END
GO

INSERT INTO bronze.load_config (source_file_name, target_schema_name, target_table_name, is_active) VALUES
('cust_info.csv', 'bronze', 'crm_cust_info', 1),
('prd_info.csv', 'bronze', 'crm_prd_info', 1),
('sales_details.csv', 'bronze', 'crm_sales_details', 1),
('loc_a101.csv', 'bronze', 'erp_loc_a101', 1),
('cust_az12.csv', 'bronze', 'erp_cust_az12', 1),
('px_cat_g1v2.csv', 'bronze', 'erp_px_cat_g1v2', 1);

-- Example of a disabled table (this one will be skipped by the procedure)
INSERT INTO bronze.load_config (source_file_name, target_schema_name, target_table_name, is_active) VALUES
('old_data_v1.csv', 'bronze', 'archive_table', 0);
GO