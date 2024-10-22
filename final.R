#data types
a<-c("a","b")
class(a)
b<-c(1,2)
class(b)
c<-c(1L,23L)
class(c)
d<-c(2+3i,8+6i)
class(d)
e<-c("Make it something")
f<-charToRaw(e)
f
class(f)
g<-rawToChar(f)
#operators 

#arthimetic
a<-c(1,2,3,4)
b<-c(25,24,23,22)
print(a+b)
print(a-b)
print(a*b)
print(a/b)
print(a^b)
print(a%%b)
print(a%/%b)

#relational
print(a>b)
print(a<b)
print(a==b)
print(a>=b)
print(a<=b)
print(a!=b)

#logical

print(a&b)
print(a|b)
print(a&&b) # a and b be must be of length 1
print(a||b)

#vectors
#methods to create a vector
#1
a1<-c(1,2,3,4,5,6)
a1
#2
a2<-c(1:6)
a2
#3
a3<-seq(1,6)
a3
names(a1)=c("a","b","c","d","e","f")
a1
#accessing elements
a1[1]
a1[-2]
a1[1:4]
#performing operations and adding new element into vector
a1+a2
a1-a2
a1*a2
a1/a2
a1[7]<-5
a1
a1[4]<-5
a1

#matrices
rnames=c("a","b")
cnames=c(1,2,3)
a<-matrix(data=c(1:6),ncol=3,nrow=2,dimnames = list(rnames,cnames),byrow=TRUE)
a
ncol(a)
nrow(a)
dim(a)
mode(a) #type of storage
str(a)
attributes(a)
diag(1,ncol=4,nrow=4)
t(a) #transpose
a%*%

#accesing elements
a[2,]
a[,3]
a[c(1,2),3]
a[-2,]

a[2,]*3


#data frames
a<-data.frame("Name"=c("Me","you","I"),
              "Age"=c(18,20,25),
              "grade"=c("A","O","D"))
a
names(a)
length(a)
str(a)
a$present<-c("Fail","Pass","Pass")
a
b<-c("Us","22","B+","Fail")
a<-rbind(b,a)
a
a$present=NULL
a
a[a$Age>20]
summary(a)
#list
a<-list("A","because",TRUE,68)
a
append(a,"U")
a[-3]
"A" %in% a
a[c(2:3)]
#factors
a<-factor(c(1,2,2,6))
a
levels(a)=c(levels(a),"7")
levels(a)
b<-factor(a)

#arrays
a<-c(1,2,3)
b<-c(4,5,6)
c<-array(c(a,b),dim=c(4,2,2))
c
rnames=c("a","b","c","d")
cnames=c("1","2")
matnames=c("mat1","mat2")
c<-array(c(a,b),dim=c(4,2,2),dimnames = list(rnames,cnames,matnames))
c


c[1,1,1]
c[,,2]
printer <-function(name,age=18 ,grp=TRUE){
  print(name)
  print(age)
  print(grp)
  
}
printer(age=17,"jat",FALSE)
 

#String functions 
#string extraction
substr("MAXIMUM",start =2,stop=4)
substring("MINIMUM",first=4)
substring("MINIMUM",first=1:3,last=3:4)
strsplit("U N D E R S T A N D",split=" ")
x<-"YOU"
y<-tolower(x)
y
toupper(y)
#character replacement
chartr(old="Y",new="a",x)
#abbreviate
a<-c("abc","hij")
b<-c("hij","abc")
identical(a,b)
match(a,b)
union(a,b)
intersect(a,b)
setdiff(a,b)
sort(b,decreasing=TRUE)
#str_trim remove white spaces left right and both 3 conditions triming white spaces
#str_pad 
#str_pad("BigData",width=10,side="left")
#str_c concatination 
#str_dup duplicated.
#(str_length)

#apply functions 
#function(x,margin=1 row wise col wise=2 ,FUN, ) 
#lapply applicable only through columns 
#sapply has one additional argument simplify by default true .if simplify is false then sapply returns a list similar to lapply
#tapply (col1 numeric,col 2 factos, fun)
#mapply multivariate function is given as first argument here 
a<-mapply(rep,1:3,3:1)
a



#sample_n(data,no of rows)
#sample_fract how much % randomly select
#distinct(duplicacy removes)
#select used to select columns desired 