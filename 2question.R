install.packages("class")
install.packages("caret")

library(class)
library(caret)

a <- read.csv(file.choose())
z<-a$EmploymentStatus
a<-a[-6]
a
str(a)
summary(a)


norm<-function(x){
  return ((x-min(x))/(max(x)-min(x)))
}


data_norm = as.data.frame(lapply(loan_data[, -ncol(a)], norm))

data_norm$LoanDefault <- a$LoanDefault

set.seed(42)
trainIndex = createDataPartition(data_norm$LoanDefault, p = 0.7, list = FALSE)
trainData = data_norm[trainIndex, ]
testData = data_norm[-trainIndex, ]

train_X = trainData[, -ncol(trainData)]
train_Y = trainData$LoanDefault
test_X = testData[, -ncol(testData)]
test_Y = testData$LoanDefault

k_value = 30
knn_pred = knn(train = train_X, test = test_X, cl = train_Y, k = k_value)


accuracy = sum(knn_pred == test_Y) / length(test_Y)
print(paste("Accuracy:", round(accuracy, 2)))

x=table(knn_pred,test_Y)
confusion_matrix = confusionMatrix(x)
print(confusion_matrix)

#This code applies the k-NN algorithm to predict loan defaults by normalizing the
#features to ensure all values are on a comparable scale, which is essential for 
#distance-based algorithms like k-NN. The dataset is split into training and testing 
#sets to evaluate the model's performance, and the confusion matrix provides a detailed
#assessment of the model's accuracy and prediction quality.