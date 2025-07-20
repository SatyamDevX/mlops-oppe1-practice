from datetime import timedelta
from feast import FeatureView, Field, FeatureStore, Entity, ValueType
from feast.types import Float32, String
from feast.infra.offline_stores.bigquery_source import BigQuerySource

iris = Entity(
    name="iris_id",
    join_keys=["iris_id"],
    value_type=ValueType.INT64,
    description="Identifier for each iris row"
)

iris_source = BigQuerySource(
    table="amiable-dreamer-461212-u2.feast_iris_dataset.iris_features",
    created_timestamp_column="event_timestamp",
)

iris_fv = FeatureView(
    name="iris_features",
    entities=[iris],
    ttl=timedelta(days=1),
    schema=[
        Field(name="sepal_length", dtype=Float32),
        Field(name="sepal_width", dtype=Float32),
        Field(name="petal_length", dtype=Float32),
        Field(name="petal_width", dtype=Float32),
        Field(name="species", dtype=String),
    ],
    online=True,
    source=iris_source,
)

