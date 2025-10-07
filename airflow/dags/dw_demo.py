from airflow.models.dag import DAG
from airflow.providers.microsoft.mssql.operators.mssql import MsSqlOperator
import pendulum

MSSQL_CONNECTION_ID = "mera_sql_server"

with DAG(
    dag_id="data_warehouse_pipeline",
    start_date=pendulum.datetime(2025, 1, 1, tz="UTC"),
    schedule=None,
    catchup=False,
    tags=["dwh-project"],
) as dag:

    # Step 1: Bronze layer ka script chalao
    run_bronze_script = MsSqlOperator(
        task_id="run_bronze_layer_script",
        mssql_conn_id=MSSQL_CONNECTION_ID,
        sql="Scripts/bronze/load_bronze.sql",
    )
    
    run_silver_script=MsSqlOperator(
        task_id="run_silver_layer_script",
        mssql_conn_id=MSSQL_CONNECTION_ID,
        sql="Scripts/silver/load_bronze.sql",
    )

    # Step 2: Gold layer ka script chalao
    run_gold_script = MsSqlOperator(
        task_id="run_gold_layer_script",
        mssql_conn_id=MSSQL_CONNECTION_ID,
        sql="Scripts/gold/data_modelling/fact_gold.sql",
    )

    # Order batao: Pehle bronze chalao, phir gold chalao
run_bronze_script >> run_silver_script>>run_gold_script