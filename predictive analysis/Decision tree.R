#Step 1 : Install and necessary libraries
install.packages("rpart")
install.packages("rpart.plot")
library(dplyr)
library(rpart.plot)
#Step 2 Load the iris dataset
data(iris)
str(iris)

#Step 3 is to split the data into training and test sets
set.seed(42) #Setting seed for reporoducibility
indexes=sample(1:nrow(iris),0.7*nrow(iris))
iris_train = iris[indexes, ] #training data 70%
View(iris_train)
iris_test=iris[-indexes,] #test data (30%)

#Step 4 Define the target formula and train the decision tree
target=Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width
tree=rpart(target, data = iris_train, method = "class")

#Step 5: visualize the decision tree
rpart.plot(tree)
#Step 6:Make predictions on the test set
predictions = predict(tree, iris_test,type="class")

#Step 7: Calculate the model by creating a confusion matrix
confusion_matrix=table(iris_test$Species,predictions)
print(confusion_matrix)

#Step 8 calculate accuracy
accuracy=sum(diag(confusion_matrix))/sum(confusion_matrix)
print(paste("Accuracy",round(accuracy,4)*100))