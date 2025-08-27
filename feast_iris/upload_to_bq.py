import pandas as pd
from google.cloud import bigquery
from datetime import datetime
import os

# Load and enhance iris.csv
df = pd.read_csv("../data/iris.csv")
df["iris_id"] = df.index + 1
df["event_timestamp"] = pd.to_datetime(datetime.utcnow())

# Save back the updated file (optional)
df.to_csv("../data/iris.csv", index=False)

# Upload to BigQuery
os.environ["GOOGLE_CLOUD_PROJECT"] = "amiable-dreamer-461212-u2"  # your project ID
client = bigquery.Client()

dataset_id = "feast_iris_dataset"
table_id = "iris_features"
table_ref = f"{os.environ['GOOGLE_CLOUD_PROJECT']}.{dataset_id}.{table_id}"

job = client.load_table_from_dataframe(df, table_ref)
job.result()

print(f"Uploaded iris.csv to BigQuery table {table_ref}")
