
/******************************************************************************************
* Fact Table Preview: CRM Sales Details
* ----------------------------------------------------------------------------------------
* This query previews the CRM sales details table, which serves as a fact table in the data model.
* 
* Rationale:
*   - This table contains measures (e.g., sales amounts, quantities), transaction dates, and various IDs.
*   - It is used for analytical purposes to aggregate and analyze sales metrics across different dimensions.
*   - The presence of transaction-level data and metrics makes this a fact table in the star schema.
******************************************************************************************/

USE DataWarehouseDB;

SELECT * 
FROM silver.crm_sales_details; 

--CONNECTING FACT TABLE WITH SURROGATE KEYS OF THE DIMENSIONS--

select 
sls_ord_num,
sls_prd_key,
sls_cust_id,
sls_order_dt,
sls_ship_dt,
sls_due_dt,
sls_sales,
sls_quantity,
sls_price
from silver.crm_sales_details sc
LEFT JOIN gold.dim_customers gc
on sc.sls_prd_key=gc.customer_number
LEFT JOIN gold.dim_products gp
on sc.sls_cust_id=gp.product_number;

