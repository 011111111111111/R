new function <- function() {
  for (i in i<6){
    b=i^2
    print(b)
    
  }
}
new_function <- function(a,b,c){
  print(a*b*c)
}

new_function(as.integer(readline("Enter 1st number : ")),as.integer(readline("Enter 2st number : ")),as.integer(readline("Enter 3rd number : ")))
install.packages("sqldf")
library("sqldf")
stu <- read.csv("C://Users//sreedevi//Downloads//students.csv")
stu
sqldf("select name as A") 
sqldf("select * from stu limit 5 ")
View(sqldf("select * from students")) # * used for all fields
sqldf("select * from students where marks>80")
sqldf("select * from students where name='Veer'")
sqldf("select * from students where marks==45")
sqldf("select name from students where marks==45")
sqldf("select distinct name from students")
min(students$marks)
max(students$marks)


abs(7.8)
abs(-90.8)
abs(76)
abs(-80)
abs(5.7)
abs(-32.78)
abs(43)
abs(-0.7)
abs(0.8)
abs(-6.8)
abs(9.8)
abs(-120.8)
abs(8976)
abs(-230)
abs(56.7)
abs(-2.78)
abs(783)
abs(-98.7)
abs(23.8)
abs(-34.8)


#take 5 decimal values from user and find absolute
f=scan(what=numeric(),n=10)
abs(f)

a=scan(what=numeric(),n=4)
sqrt(a)
ceiling(-10.4)
floor(10.4)



#take 5 -ve values and apply sqrt ceiling floor 
{
a=scan(what=numeric(),n=5)
sqrt(a)
ceiling(a)
floor(a)
}
#take 5 decimal values and apply sqrt ceiling and floor
{
b=scan(what=numeric(),n=5)
sqrt(b)
ceiling(b)
floor(b)
}

y=10.789
trunc(y)
print(round(9.615,digits = 3))
#logarithmic functions and exponential functions
log(10)
exp(10)
#functions for strings
#substring is used to extract part from the given string
#three arguments input the string dtarting string and stop  or last string
str="welcome to lpu"
print(substr(str,4,10))
#nchar find the number of characters in a string 
str="students complete your task as soon as possible"
nchar(str)
substr(str,27,37)
#grep function is used to match the pattern from the given string
str="Hello world"
grep("lo",str)
x<-c("ab","cd","ef")
match("ef",x)
str1<-c("welcome ","to","LPU")
grep("Welcome ",str1)
grep("LPU",str1,ignore.case=FALSE)
grep("to",str1,value=F)
y<-c("lpu","UNI","LPU","uni")
grep("lpu",y,ignore.case=TRUE)
#b+ minimum occurence of b in the string
#b* 0 or maximum occurence of b int hte string
grep("b+",c("ab+","bda2","+ccaa","ad"),value=TRUE)
grep("b*",c("ab+","bda2","+ccaa","ad"),value=TRUE)
grep("b+",c("ab+","bda2","+ccaa","ad"),value=FALSE)
grep("b*",c("ab+","bda2","+ccaa","ad"),value=FALSE)


#sub() is used to replace the string or character
str="Welocme to  R programming"
sub("R","C",str)
sub("r","c",str)
sub("m","M",str)
y="Hello world hello"
sub("ell","how",y)
sub("hel","owe",y,ignore.case=TRUE)
#strsplit function used to idvide or break the string
z="Hello2World9"
y=strsplit(z,split = "[0-9]+")
str<-c("2-07-2023","6-09-2024")
strsplit(str,split = "-")
strsplit(y="hello6Students","[0-9]+")1
#to upper and to lower
s="LPU"
tolower(x)
install.packages(dplyr)
install.packages("tidyr")


