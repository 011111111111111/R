install.packages("tidyr")
library(tidyr)
a=read.csv("C://Users//sreedevi//OneDrive//Desktop//coding//R//bill data for tidyr 2.csv")
dim(a)
View(a)

#gather function used to convert columns into rows reshape the data from wide_format to long _format
#syntax : gather(data, key,values..)
datapivot <- gather(a,Bill_type,Bill_Amt,
                    gasbill:waterbill)
View(datapivot)


#spread function used to convert rows to columns 
data <- spread(datapivot, Bill_type,Bill_Amt)
View(data)


#separate or split one column into multiple columns 
datasep<-separate(a,Date,c("Day","Month","Year"),sep="-")
datasep
dim(datasep)


#unite - to merge the columns 
reunite <- unite(datasep, Date, c("Day", "Month","Year"),
                 sep="/")
reunite
dim(reunite)


#to replace null values we use function "replace_na" and "drop_na" used to delete the null values


df<-data.frame(x=c(1,2,NA),y=c("a",NA,"b"))
#df %>% replace_na(x=0, y="unknown")
replace_na(df,list(x=0, y="unknown"))
zz<-drop_na(df)
zz


