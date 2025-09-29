USE DataWarehouseDB;
GO

BULK INSERT bronze.crm_cust_info
FROM '/var/opt/mssql/datasets/cust_info.csv'
WITH (
    FIELDTERMINATOR = ',',
    FIRSTROW = 2,
    TABLOCK
);
