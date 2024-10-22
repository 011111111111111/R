#apply functions are alternatives to loops 
#they have simple syntax in comparison to loops and are executed fast 
#apply(input,margin =1 row wise 2 column wise),FUN is user defined or  built in funcion

m=matrix(c(1:10),nrow=5,ncol=6)
result=apply(m,1,sum)
result
result2=apply(m,2,sum)
result2
x=apply(m,1,mean)
y=apply(m,2,mean)
a=apply(m,1,median)
b=apply(m,2,median)
x
y
a
b
#multiply both rows and columns by 2

Multiply=function(a){
  a*2
}
n=apply(m,1,Multiply)
n
l=apply(m,2,Multiply)
l
View(m)

#lapply l stands for list 
#the output displayed only in the form of list 
#lapply(input,function)
a=c("A","B","c")
b=lapply(a,toupper)
b
class(b)

a=c(7,1,4,28,5,5)
b=lapply(a,sqrt)
b
class(b)

#examples for lapply \

#1
a=c("R PROGRAMMING")
b=lapply(a,tolower)
b
#2
a=c(5:7)
table=function(x){
  for(i in 1:12){
    y=x*i
    print(y)
  }
}
b=lapply(a,table)
b
#3
a=c(12345.678)
b=lapply(a,ceiling)
b
#4
a=c(-65.7)
b=lapply(a,floor)
b
#5
a=c(25,60,90)
Space=function(x){
  y=x+5
  print(y)
}
b=lapply(a,Space)
b

#s apply simplified apply by default the value of simplify  is true if it false displayed in the form of list
a=c(10,8,6,4)
b=sapply(a,sqrt)
b
class(b)

x=c(20,8,6,4)
y=sapply(x,sqrt,simplify=FALSE)
y
class(y)

#t apply implemented on categorical valuables 
a=iris
a
b=tapply(a$Sepal.Width,
         a$Species,mean)
b

#mapply multipvariable
v<-c("hello","world")
count<-2
while(count<=7){
  print(v)
  count=count+1
}

y<-c("key", "hardwork", "success")
if("key" %in% y && "hardwork" %in% y){
  print("True")
}else{
  print("False")
}

