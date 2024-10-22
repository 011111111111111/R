a=matrix(c(1,2,3,4,5,6,7,8,9,10,11,12),nrow=3,ncol=4,byrow=TRUE)
a[,3]
matri = matrix(c(1,2,3,4,5,6,7,8,9,10,11,12),nrow=3,ncol=4,byrow = TRUE,dimnames = list(c("row1","row2","row3"),c("col1","col2","col3","col4")))
#matrix(data,nrow,ncol,byrow=TRUE/FALSE,dimnames =  )
matri[,3]
matri[1:2,]
matri[,2:3]
matri[2,3]
matri[3,4]=60
matri[1,]=NULL
rbind(a,c(13,14,15,16))
cbind(a,c(17,18,19))
#create a matrix of 30 elementsname all rows and columns access thrid,fourth and fifth  row 
#access 4th column
#access 1,2,3 and 4th column 
#access elemetnts in the 3rd column and 3rd row 2nd row and 5th column
#modify the elements that are greater than 10 by zero
#modify all the elements by -1 that are less than 10
#add 2 more rows and 3 columns 
#transpose the matrix 
#delete third row
#delete 1st column 

#create two matrix and perform all arthimetic operations 

a=matrix(c(1:30), nrow=6,ncol=5,byrow=TRUE,dimnames = list(c("row1","row2","row3","row4","row5","row6"),c("col1","col2","col3","col4","col5")))
a[,3]
a[,3:5]
a[4,]
a[1:4,]
a[a > 10] <- 0
a
a[a<10]<--1
a
a<-a[-2]
matrix <- rbind(a, matrix(0, nrow = , ncol = 10))
matrix <- cbind(matrix, matrix(0, nrow = 7, ncol = 3))



student.data=data.frame(stud_id = c(1:3),
                        stud_name= c("sakshi","zeenat","manish"),
                        stud_marks = c(10,9,8))
student.data
#structure of data frame
str(student.data)
length(student.data)
student.data[,1:2]
#adding row and columns
a=list(4,"amit",8)
rbind(student.data,a)
a=list(12,13,14)
cbind(student.data,stud_marks=a)
#delete rows from data frame
student.data=student.data[-1,]
student.data



#summary of data frame
summary(student.data)

#subswt
subset(student.data,stud_id>2)
subset(student.data,stud_marks>8)
subset(student.data,stud_id>1,select=stud_name)
subset(student.data,stud_marks>=10, select=c(stud_id, stud_name))
#combine two data frames horizontally cbind
#vertically rbind




