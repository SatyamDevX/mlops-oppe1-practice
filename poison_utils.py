# poison_utils.py
import numpy as np

def poison_data(df, poisoning_rate=0.1, seed=42):
    np.random.seed(seed)
    df_poisoned = df.copy()

    num_rows = len(df_poisoned)
    num_poisoned = int(poisoning_rate * num_rows)

    poisoned_indices = np.random.choice(df_poisoned.index, size=num_poisoned, replace=False)

    for col in ['sepal_length', 'sepal_width', 'petal_length', 'petal_width']:
        df_poisoned.loc[poisoned_indices, col] = np.random.uniform(
            df_poisoned[col].min(), df_poisoned[col].max(), size=num_poisoned
        )
    
    return df_poisoned

