import pytest
import pandas as pd
from joblib import load
from iris_predictor import IrisModel  # Ensure this class is in iris_predictor.py

def test_model_prediction_sanity():
    # Load the model
    model = IrisModel()

    # Define test iris IDs
    test_ids = [0, 1, 2, 3]

    # Make predictions
    predictions = model.predict(test_ids)

    # Assert all IDs returned
    assert set(predictions["iris_id"]) == set(test_ids)

    # Assert predictions are not empty
    assert not predictions["prediction_encoded"].isnull().any()

