# poison_experiment.py
import pandas as pd
from sklearn.ensemble import RandomForestClassifier
from sklearn.model_selection import train_test_split
from sklearn.metrics import classification_report

from poison_utils import poison_data

def train_and_evaluate(df, poisoning_level):
    df_poisoned = poison_data(df, poisoning_rate=poisoning_level)

    X = df_poisoned[["sepal_length", "sepal_width", "petal_length", "petal_width"]]
    y = df_poisoned['species']

    X_train, X_test, y_train, y_test = train_test_split(
        X, y, stratify=y, random_state=42)

    model = RandomForestClassifier(random_state=42)
    model.fit(X_train, y_train)

    y_pred = model.predict(X_test)
    print(f"\n💥 Poisoning Level: {int(poisoning_level * 100)}%")
    print(classification_report(y_test, y_pred))


if __name__ == "__main__":
    df = pd.read_csv("data/iris.csv")
    train_and_evaluate(df, 0.05)
    train_and_evaluate(df, 0.10)
    train_and_evaluate(df, 0.50)

