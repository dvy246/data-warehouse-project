from airflow.models.dag import DAG
from airflow.providers.microsoft.mssql.operators.mssql import MsSqlOperator
import pendulum

MSSQL_CONNECTION_ID = "sql_server_dwh"

with DAG(
    dag_id="full_dwh_pipeline",
    start_date=pendulum.datetime(2025, 1, 1, tz="UTC"),
    schedule=None,
    catchup=False,
    tags=["dwh-project"],
    template_searchpath="/opt/airflow/scripts"
) as dag:

    load_bronze = MsSqlOperator(
        task_id="load_bronze_layer",
        mssql_conn_id=MSSQL_CONNECTION_ID,
        sql="bronze/load_bronze.sql",
    )

    load_silver = MsSqlOperator(
        task_id="load_silver_layer",
        mssql_conn_id=MSSQL_CONNECTION_ID,
        sql="silver/load_silver.sql",
    )

    load_gold = MsSqlOperator(
        task_id="load_gold_layer",
        mssql_conn_id=MSSQL_CONNECTION_ID,
        sql="gold/ddl_gold.sql",
    )

    load_bronze >> load_silver >> load_gold