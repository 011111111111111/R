import pandas as pd

# Load your dataset
df = pd.read_csv('loan_dataset.csv')
# print(df.head())
# print(df.info())
# print(df.isnull().sum())
# correlation_matrix = df.corr()
# sns.heatmap(correlation_matrix, annot=True, cmap='coolwarm')
# plt.show()


import seaborn as sns

sns.boxplot(x='categorical_column', y='numerical_column', data=df)
plt.show()
