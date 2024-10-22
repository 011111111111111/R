# Load necessary libraries
library(dplyr)
library(zoo) 

# Read the dataset
customer_data <- read.csv(file.choose())

# View the first few rows of the data
head(customer_data)
customer_data <- customer_data %>%
  mutate(
    Age = na.approx(Age, na.rm = FALSE),
    PurchaseAmount = na.approx(PurchaseAmount, na.rm = FALSE),
    SatisfactionScore = na.approx(SatisfactionScore, na.rm = FALSE)
  )
sum(is.na(customer_data))
avg_satisfaction_by_gender <- customer_data %>%
  group_by(Gender) %>%
  summarise(AvgSatisfaction = mean(SatisfactionScore, na.rm = TRUE))


print(avg_satisfaction_by_gender)

#summary(customer_data)
customer_data


#
The code uses na.approx to handle missing values by interpolating based
on nearby data, maintaining trends without bias. Grouping by Gender and
calculating the average satisfaction score helps identify patterns across
different demographics. This ensures clean and meaningful data for analysis.