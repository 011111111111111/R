# Load required libraries
library(dplyr)
library(rpart.plot)
library(e1071)  # For Naive Bayes

# Step 1: Load the dataset
dataa <- read.csv(file.choose())

# Step 2: Inspect the dataset
str(dataa)
View(dataa)

# Step 3: Split the data into training and test sets
set.seed(42)  # Setting seed for reproducibility
indexes <- sample(1:nrow(dataa), 0.7 * nrow(dataa))
train <- dataa[indexes, ]  # Training data (70%)
test <- dataa[-indexes, ]  # Test data (30%)

# Step 4: Define the target formula and train the decision tree
target <- class ~ duration + src_bytes + dst_bytes + land + wrong_fragment + urgent + hot + num_failed_logins + logged_in + num_compromised + root_shell + su_attempted + num_root + num_file_creations + num_shells + num_access_files + num_outbound_cmds + is_host_login + is_guest_login + count + srv_count + serror_rate + srv_serror_rate + rerror_rate + srv_rerror_rate + same_srv_rate + diff_srv_rate + srv_diff_host_rate + dst_host_count + dst_host_srv_count + dst_host_same_srv_rate + dst_host_diff_srv_rate + dst_host_same_src_port_rate + dst_host_srv_diff_host_rate + dst_host_serror_rate + dst_host_srv_serror_rate + dst_host_rerror_rate + dst_host_srv_rerror_rate

# Train the Decision Tree
tree <- rpart(target, data = train, method = "class")

# Step 5: Visualize the decision tree
rpart.plot(tree)

# Step 6: Make predictions on the test set
predictions <- predict(tree, test, type = "class")

# Step 7: Confusion matrix for Decision Tree
confusion_matrix <- table(test$class, predictions)
print("Confusion Matrix - Decision Tree:")
print(confusion_matrix)

# Step 8: Calculate accuracy for Decision Tree
accuracy <- sum(diag(confusion_matrix)) / sum(confusion_matrix)


# Step 9: Naive Bayes model training
nb_model <- naiveBayes(class ~ ., data = train)

# Step 10: Naive Bayes predictions on test set
nb_predictions <- predict(nb_model, test)

# Step 11: Confusion matrix for Naive Bayes
conf_matrix_nb <- table(test$class, nb_predictions)
print("Confusion Matrix - Naive Bayes:")
print(conf_matrix_nb)

# Step 12: Calculate accuracy for Naive Bayes
accuracy_nb <- sum(diag(conf_matrix_nb)) / sum(conf_matrix_nb)
print(paste("Decision Tree Accuracy:", round(accuracy * 100, 2), "%"))
print(paste("Naive Bayes Accuracy:", round(accuracy_nb * 100, 2), "%"))