dataa<-read.csv(file.choose())
library(dplyr)
library(rpart.plot)
#Step 2 Load the iris dataset

str(dataa)
View(dataa)
#Step 3 is to split the data into training and test sets
set.seed(42) #Setting seed for reporoducibility
indexes=sample(1:nrow(dataa),0.7*nrow(dataa))
train = dataa[indexes, ] #training data 70%
View(train)
test=dataa[-indexes,] #test data (30%)

#Step 4 Define the target formula and train the decision tree
target= class ~  duration + src_bytes + dst_bytes + land + wrong_fragment + urgent + hot + num_failed_logins + logged_in + num_compromised + root_shell + su_attempted + num_root + num_file_creations + num_shells + num_access_files + num_outbound_cmds + is_host_login + is_guest_login + count + srv_count + serror_rate + srv_serror_rate + rerror_rate + srv_rerror_rate + same_srv_rate + diff_srv_rate + srv_diff_host_rate + dst_host_count + dst_host_srv_count + dst_host_same_srv_rate + dst_host_diff_srv_rate + dst_host_same_src_port_rate + dst_host_srv_diff_host_rate + dst_host_serror_rate + dst_host_srv_serror_rate + dst_host_rerror_rate + dst_host_srv_rerror_rate 

tree=rpart(target, data = train, method = "class")

#Step 5: visualize the decision tree
rpart.plot(tree)
#Step 6:Make predictions on the test set
predictions = predict(tree, test,type="class")

#Step 7: Calculate the model by creating a confusion matrix
confusion_matrix=table(test$class,predictions)
print(confusion_matrix)

#Step 8 calculate accuracy
accuracy=sum(diag(confusion_matrix))/sum(confusion_matrix)
print(paste("Accuracy",round(accuracy,4)*100))