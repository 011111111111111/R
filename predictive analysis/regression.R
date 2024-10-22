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
#charges plot has two distinct groups of points it is difficult to detect trends in any of the 
       