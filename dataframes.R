
student.data=data.frame(stud_id = c(1:3),
                        stud_name= c("sakshi","zeenat","manish"),
                        stud_marks = c(10,9,8))

#subset
subset(student.data,stud_id>2)
subset(student.data,stud_marks>8)
subset(student.data,stud_id>2,select=stud_name)
subset(student.data,stud_marks>8, select=c(stud_id, stud_name))


#combining two data frames horizontally
a=data.frame(emp_id=c(1,2,3),
             emp_name=c("Manish","Jain","Zahir"),
             emp_sal=c(10000,20000,80000))


#create a data frame of 5 objects 
#extract 5th column by using $sign
#extract 2nd and 4th column by indexing
# extract 2nd 3rd and 4th column by indexing
#extract 3rd row
#extract 2nd and 3rd row
#extract 1st,2nd,and 3rd row
#extract element at the 2nd row and 3rd column
#extract element at the 3rd row and 3rd column
#extract element at 1st row and 2nd column
#display the structure of data frame
#print length od data items
#add 3 more rows
#add 2 more columns 
#delete 2nd row
#delete 3rd column  
#create two vectors and combine them vertically  rbind 
#create two vectors and combine them horizontally cbind

a=data.frame(name=c("x","y","z","A","B"),
             grade=c("A","O","B+","C","A+"),
             marks=c(80,96,67,50,90),
             rank=c(3,1,4,5,2),
             sno=c(1,2,3,4,5))
a
a[,5]
a[,2:4]
a[2,3]
a[3,3]
a[1,3]
length(a)
#adding row and columns
b=list("C","A",83,3,6)
c=list("D","O",94,1,7)
d=list("E","B",58,4,8)
rbind(a,b)
rbind(a,c)
rbind(a,d)
e=list(11,10)
cbind(a,rank=e)
a=a[-2,]
a=a[,-3]

