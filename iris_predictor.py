import pandas as pd
import feast
from joblib import load


class IrisModel:
    def __init__(self):
        # Load trained model from disk
        self.model = load("artifacts/model.joblib")

        # Set up Feast feature store
        self.fs = feast.FeatureStore(repo_path="feast_iris")

    def predict(self, iris_ids):
        # Get online features from Feast
        features = self.fs.get_online_features(
            entity_rows=[{"iris_id": iris_id} for iris_id in iris_ids],
            features=[
                "iris_view:sepal_length",
                "iris_view:sepal_width",
                "iris_view:petal_length",
                "iris_view:petal_width",
            ],
        ).to_df()

        # Make prediction using loaded model
        predictions = self.model.predict(features[[
            "sepal_length", "sepal_width", "petal_length", "petal_width"
        ]])

        # Prepare final DataFrame
        features["prediction_encoded"] = predictions
        return features[["iris_id", "prediction_encoded"]]


# Optional: run test prediction when file is run directly
def make_iris_predictions():
    iris_ids = [0, 1, 2, 3]
    model = IrisModel()
    predictions = model.predict(iris_ids)
    print("Predictions for Iris IDs:")
    print(predictions)


if __name__ == "__main__":
    make_iris_predictions()

