insurance=read.csv("C://Users//sreedevi//Downloads//insurance.csv")
str(insurance)
#compacttlt display the internal structure #models dependent variable is chargesmwhich mesures the medical cost
#each person charged to the insurance plan for this year

summary(insurance$charges)
#display the summary of charges column from the insurance table
#mean value is greater than the median this implies that the distirbution of charges is right skewed
hist(insurance$charges)
#compute a histogram of the given data values
table(insurance$region)
#build a contingency table of the counts at each combination of factor level

cor(insurance[c("age","bmi","children","charges")])
#cor is used to find rhe correlation between the columns of x and y
#regression model works on numeric data rest of the columns are non numeric
#there is also a moderate positive correlation between age and charges ,bmi and charges and children and charges.These associations imply that as age,bodymass and number of children increase the
#Expected cost of insurance goes up

pairs(insurance[c("age","bmi","children","charges")])
#A matrix of scatterplots is produced it is used to detect patterns among three or more variables
#the relationship between age and charges displays several relatively straignt lines while the bmi versus
#charges plot has two distinct groups of points it is difficult to detect trends in any of the other plots


install.packages("psych")
#install packages so that pairs,panels can be used
library(psych)
pairs.panels(insurance[c("age","bmi","children","charges")])
#an enhanced scatterplot matrix can be created with pairs.panles() function
ins_model  <- lm(charges ~ age+children+bmi+sex+
                   smoker + region,data = insurance)

#fits a linear regression model relating the six indepenedent variables to the total medical charges
#tilde character ~ to describe the model, the dependent variable charges goes to the left of the tilde
#while the independent variables go to the right, sepearated by + sugbs
ins_pred <- predict(ins_model,data=insurance)
#same as above ins_model <-lm(charges<- ...,data=insurance)
ins_model
# to see the estimated beta coefficients
summary(ins_model)
       