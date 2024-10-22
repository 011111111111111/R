import numpy as np
import pandas as pd
from scipy.spatial.distance import cosine
import matplotlib.pyplot as plt
import seaborn as sns

# Load the CSV file
file_path = 'C:Users\sreedevi\OneDrive\Documents\checkingsample.xlsx'
data = pd.read_excel(file_path)

# Extract the input dataset and the other datasets
input_dataset = data.iloc[0].values
datasets = data.iloc[1:].values

# Compute cosine similarities
cosine_similarities = [1 - cosine(input_dataset, dataset) for dataset in datasets]

# Apply softmax approximation
def softmax(x):
    e_x = np.exp(x - np.max(x))
    return e_x / e_x.sum()

softmax_scores = softmax(cosine_similarities)

# Determine the most similar dataset
most_similar_index = np.argmax(softmax_scores)
most_similar_dataset = datasets[most_similar_index]

# Output results
print("Cosine Similarities:", cosine_similarities)
print("Softmax Scores:", softmax_scores)
print("Most Similar Dataset Index (1-based):", most_similar_index + 1)

# Visualize the similarities
plt.figure(figsize=(10, 6))
sns.barplot(x=np.arange(1, len(cosine_similarities) + 1), y=softmax_scores)
plt.xlabel('Dataset Index')
plt.ylabel('Softmax Score')
plt.title('Softmax Scores of Datasets Compared to Input')
plt.show()
