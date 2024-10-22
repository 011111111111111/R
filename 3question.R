
install.packages("sqldf")
library(sqldf)
sales_data <- read.csv(file.choose())
a <- sqldf("SELECT ProductID, SUM(TotalAmount) as TotalSales
                 FROM sales_data
                 GROUP BY ProductID
                 ORDER BY TotalSales DESC")
b <- sqldf("SELECT CustomerID, TotalAmount 
                 FROM sales_data
                 WHERE TotalAmount > (SELECT AVG(TotalAmount) FROM sales_data)")
c <- sqldf("SELECT * 
                 FROM sales_data
                 WHERE ProductID >= 2004")
print(c)
print(a)
print(b)