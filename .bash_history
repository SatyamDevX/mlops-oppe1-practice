python3 -m venv .venv
source .venv/bin/activate
pip install dvc[s3]
clear
pip uninstall dvc dvc-s3
pip freeze
clear
decativate
deactivate
clear
ls -alt
rm -rf .venv
clear
ls -alt
python3 -m venv .venv
source .venv/bin/activate
clear
pip install 'dvc[gcs]'
pip install --upgrade pip
clear
dvc --version
gcloud auth application-default login
dvc remote add -d myremote gs://mlops-oppe-1/dvcstore
dvc init
gcloud auth application-default login
dvc remote add -d myremote gs://mlops-oppe-1/dvcstore
dvc add data
 git add data.dvc .gitignore
dvc add artifacts/model.joblib 
dvc add artifacts
git add .gitignore artifacts.dvc
git commit -m "first iteration of model"
dvc tag -a "v1.0" -m "first modelv1.0"
git tag -a "v1.0" -m "first modelv1.0"
git status
echo ".dvc/config" >> .gitignore
git status
git status
git add .dvc/config .gitignore
git commit -m "Configure DVC remote storage"
git push origin v1.0
git push origin dev
git push --tags
dvc push
pip install dvc-gs
dvc push
dvc metrics diff v1.0 v2.0
git tag
dvc add data
git add data.dvc
git add artifacts
git -f add artifacts
git add -f artifacts
clear
ls -alt
git add .gitignore artifacts.dvc
clear
git status
git add SDK_Custom_Container_Prediction.ipynb 
git status
git commit -m "scond"
git tag -a "v2.0" -m "second iteratino"
git push -u origin dev
dvc push
git tag
dvc doctor
clear
dvc metrics diff v1.0 v2.0
git checkout v1.0
git checkout v2.0
clear
dvc status
git checkout v1.0
dvc status
git checkout v2.0
dvc status
clear
deactivate
tree
cd ..
tree
source .venv/bin/activate
pip install feast[gcp] pandas pyarrow google-cloud-bigquery dvc[gs] scikit-learn joblib
echo "venv/" >> .gitignore
mkdir feast_iris
cd feast_iris/
vim feature_store.yaml
vim entity.py
vim feature_view.py
vim __inti__.py
vim upload_to_bq.py
vim feature_view.py
tree
python upload_to_bq.py

python feast_iris/upload_to_bq.py
python feast_iris/upload_to_bq.py
gcloud config set project amiable-dreamer-461212-u2
gcloud services enable bigquery.googleapis.com
python feast_iris/upload_to_bq.py
python feast_iris/upload_to_bq.py
clear
deactivate
source .venv/bin/activate
python feast_iris/upload_to_bq.py
python feast_iris/upload_to_bq.py
clear
python feast_iris/upload_to_bq.py
cat feast_iris/feature_store.yaml 
cat feast_iris/feature.py
cd feast_iris/
tree
cat feature_view.py 
cat entity.py 
cd ..
tree
mv feast_iris/__inti__.py feast_iris/__init__.py
tree
cd feast_iris
feast apply
vim feature_view.py 
clear
vim entity.py 
cat entity.py 
vim feature_store.yaml 
cd ..
feast apply
cd feast_iris/
feast apply
vim entity.py 
feast apply
vim feature_view.py 
feast apply
vim feature_view.py 
feast apply
cd ..
feast -c feast_iris apply
cd feast_iris/
cat entity.py 
vim feature_view.py 
clear
tree
mv entity.py 
tree
rm entity.py 
tree
clear
feast apply
cd ..
feast -c feast_iris apply
cd feast_iris/
vim upload_to_bq.py 
cd ..
feast -c feast_iris apply
vim upload_to_bq.py 
rm upload_to_bq.py 
cd feast_iris/
vim upload_to_bq.py 
cd ..
clear
feast -c feast_iris apply
clear
cd feast_iris/
vim feature_view.py 
vim feature_view.py 
cd ..
clear
feast -c feast_iris apply
cat feast_iris/upload_to_bq.py 
feast -c feast_iris materialize 2025-07-19T00:00:00 2025-07-20T00:00:00
cat feast_iris/upload_to_bq.py 
vim feast_iris/upload_to_bq.py 
clear
cd feast_iris/
python upload_to_bq.py 
cealre
clear
vim up
rm up
vim upload_to_bq.py 
python upload_to_bq.py 
clear
vim upload_to_bq.py 
python upload_to_bq.py 
clear
vim upload_to_bq.py 
python upload_to_bq.py 
vim upload_to_bq.py 
cat upload_to_bq.py 
python upload_to_bq.py 
vim upload_to_bq.py 
python upload_to_bq.py 
vim upload_to_bq.py 
python upload_to_bq.py 
clear
vim upload_to_bq.py 
python upload_to_bq.py 
vim upload_to_bq.py 
python upload_to_bq.py 
ls -l ../data/iris.csv
vim upload_to_bq.py 
python upload_to_bq.py 
vim up
rm up
vim upload_to_bq.py 
clear
python upload_to_bq.py 
vim upload_to_bq.py 
python upload_to_bq.py 
vim upload_to_bq.py 
python upload_to_bq.py 
vim upload_to_bq.py 
clear
python upload_to_bq.py 
clear
vim upload_to_bq.py 
python upload_to_bq.py 
cat upload_to_bq.py 
clear
cd ..
feast init feast_iris/
cd feast_iris/
feast apply
feast materialize 2022-01-01T00:00:00 2025-12-31T23:59:59
clear
feast materialize-incremental $(date -u +"%Y-%m-%dT%H:%M:%S")
clear
cat upload_to_bq.py 
cat feature_view.py 
clear
vim feature_view.py 
vim upload_to_bq.py 
python upload_to_bq.py 
clear
python upload_to_bq.py 
clear
vim upload_to_bq.py 
python upload_to_bq.py 
vim up
clear
rm up
vim upload_to_bq.py 
python upload_to_bq.py 
vim upload_to_bq.py 
python upload_to_bq.py 
clear
vim u
rm u
vim upload_to_bq.py 
python upload_to_bq.py 
clear
vim up
rm up
vim upload_to_bq.py 
clear
clear
python upload_to_bq.py 
clear
vim upload_to_bq.py 
python upload_to_bq.py 
clear
vim upload_to_bq.py 
python upload_to_bq.py 
clear
vim upload_to_bq.py 
clear
python upload_to_bq.py 
feast materialize 2025-07-13T00:00:00 2025-07-20T00:00:00
clear
vim upload_to_bq.py 
clear
python upload_to_bq.py 
clear
ls -alt
cd data
ls 
clear
cd ..
cat feature_view.py 
clear
vim up
rm up
vim upload_to_bq.py 
python upload_to_bq.py 
feast apply
feast materialize 2025-07-01T00:00:00
clear
feast apply
feast materialize 2025-07-01T00:00:00 2025-07-19T18:37:00
clear
cd ..
tree
vim train_model.py
python train_model.py 
clear
vim train_model.py 
python train_model.py 
clear
cd feast_iris/
feast materialize 2025-07-01T00:00:00 2025-07-19T00:00:00
clear
cd ..
rm train_model.py 
vim train_model.py
python train_model.py
clear
rm train_model.py 
vim train_model.py
python train_model.py 
vim import pandas as pd
import feast
from joblib import load
class IrisModelPredictor:
    def __init__(self):
        # Load trained model
        self.model = load("artifacts/model.joblib")
        # Set up Feast Feature Store
        self.fs = feast.FeatureStore(repo_path="feast_iris")
    def predict(self, iris_ids: list):
        # Get online features from Feast
        feature_response = self.fs.get_online_features(
            entity_rows=[{"iris_id": iris_id} for iris_id in iris_ids],
            features=[
                "iris_features:sepal_length",
                "iris_features:sepal_width",
                "iris_features:petal_length",
                "iris_features:petal_width",
            ],
        )
        # Convert to DataFrame
        df = pd.DataFrame.from_dict(feature_response.to_dict())
        # Predict
        df["prediction_encoded"] = self.model.predict(df[[
            "sepal_length",
            "sepal_width",
            "petal_length",
            "petal_width"
        ]])
        return df[["iris_id", "prediction_encoded"]]
# Example usage
if __name__ == "__main__":;     predictor = IrisModelPredictor()
    iris_ids = [0, 1, 2]  # Example IDs that exist in your online store
    predictions = predictor.predict(iris_ids)
    print(predictions)
clear
ls -alt
clear
vim iris_predictor.py
rm iris_predictor.py 
vim iris_predictor.py
python iris_predictor.py
deactivate && source .venv/bin/activate
python iris_predictor.py
2RR0;276;0c10;rgb:0000/0000/000011;rgb:ffff/ffff/ffff2RR0;276;0c10;rgb:0000/0000/000011;rgb:ffff/ffff/ffff2RR0;276;0c10;rgb:0000/0000/000011;rgb:ffff/ffff/ffff2RR0;276;0c10;rgb:0000/0000/000011;rgb:ffff/ffff/ffff2RR0;276;0c10;rgb:0000/0000/000011;rgb:ffff/ffff/ffff2RR0;276;0c10;rgb:0000/0000/000011;rgb:ffff/ffff/ffff2RR0;276;0c10;rgb:0000/0000/000011;rgb:ffff/ffff/ffff2RR0;276;0c10;rgb:0000/0000/000011;rgb:ffff/ffff/ffff2RR0;276;0c10;rgb:0000/0000/000011;rgb:ffff/ffff/ffffclear
clear
tree
deactivate
clear
git status
ls -alt
clear
cat import 
rm import 
clear
git status
echo ".viminfo" >> .gitignore
clear
git status
git add .
git commit -m "feast implemented"
git branch
git checktout dev
git checkout dev
clear
git status
git branch
git checkout - command
git chekout v2
git checkout v2.0
git checkout v2.0
clear
git branch
git push -u origin v2.0
git push -u origin v2.0
clear
git status
git checkout main
git checkout dev
git status
git checkout v2.0
git checkout dev
clear
cd ..
mkdir tests
cd tests
vim test.py
pytest test.py 
source .venv/bin/activate
ls -alt
git checkout dev
source .venv/bin/activate
clear
ls 
cd ..
source .venv/bin/activate
pip install pytest
cd tests/
pytest test.py
clear
ls
cd ..
tree
vim iris_predictor.py
python iris_predictor.py 
cd feast
cd feast_iris/
vim feature_store.yaml
python iris_predictor.py 
cd ..
python iris_predictor.py 
cd feast_iris/
vim feature_view.py
cd ..
python iris_predictor.py 
clear
pip install feast pandas scikit-learn joblib google-cloud-bigquery pandas-gbq
cd feast_iris/
feast apply
vim feature_
rm feature_
vim feature_view.py 
feast apply
vim feature_view.py 
feast apply
vim feature_view.py 
feast apply
vim feature_view.py 
feast apply
feast materialize 2025-07-01T00:00:00 2025-07-19T00:00:00
cd ..
python iris_predictor.py
2RR0;276;0c10;rgb:0000/0000/000011;rgb:ffff/ffff/ffff2RR0;276;0c10;rgb:0000/0000/000011;rgb:ffff/ffff/ffff2RR0;276;0c10;rgb:0000/0000/000011;rgb:ffff/ffff/ffff2RR0;276;0c10;rgb:0000/0000/000011;rgb:ffff/ffff/ffff2RR0;276;0c10;rgb:0000/0000/000011;rgb:ffff/ffff/ffff2RR0;276;0c10;rgb:0000/0000/000011;rgb:ffff/ffff/ffff2RR0;276;0c10;rgb:0000/0000/000011;rgb:ffff/ffff/ffff2RR0;276;0c10;rgb:0000/0000/000011;rgb:ffff/ffff/ffffgiclear
clear
git status
git add .
git push
git status
git commit -m "stohueohu"
git push
cd feast_iris/
vim upload_to_bq.py
python upload_to_bq.py 
vim upload_to_bq.py 
python upload_to_bq.py 
vim upload_to_bq.py 
python upload_to_bq.py 
feast apply
cd ..
python iris_predictor.py 
cd ..
cd jupyter/
ls -alt 
cd feast_iris/
python feature_view.py 
cd ..
ls
tree
cd ..
tree
cd ..
clear
cd ~
ls
ls
tree
clear
ls
tree
ls -l
clear
vim poison_utils.py
tree
clear
vim poison_experiment.py
python -m venv .venv
source .venv/bin/activate
ls
pip install pandas scikit-learn
clear
python poison_experiment.py
tree
clear
vim poison_experiment.py
ls
python poison_experiment.py
clear
vim poison_experiment.py 
clear
python poison_experiment.py
cat poison_utils.py 
