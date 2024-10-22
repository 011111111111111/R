 m <- c(2, 3, 4)
 n <- c(6, 7, 8)
 print(m+n)
 print(m-n)
 print(m*n)
 print(m/n)
 print(m>n)
 print(m<n)
 print(m!=n)
 print(m==n)
 print(m>=n)
 print(m<=n)
 print(m & n)
 print(m|n)
 print(m<-n)
 print(m>-n)
 print(m->>n)
 print(n<<-m)
 x <- 5:10
 print(x)
 a <- c(12, 24, 36, 48, 56)
 b <- 25
 print(b%in%a)
 
 
 a <- c(1, 2, 3, 4)
 print(a[-2])
 print(a[5])
 b<-seq(1, 10)
 print(b)
 c <- 1:10
 print(c)
 
 class(a)
 
 d<-c(1L, 2L, 3L)
 print(d)
 class(d)
 
 e<-c('a', 'b', 'c')
 print(e)
 class(e)
 
 a<-1:30
 print(a[20])
 print(a[-19])
 
 a<-1:5
 b<-6:10
 z<-c(a,b)
 print(z)

 a<-NULL
 print(a)
 
 x1<-c(3,7,6,8,3,9,4)
 print(x1[1:5])
 
 e<-26:40
 print(e)
 print(e[1:13])
x2<-c(3,7,6,8,3,9,4,1)
print(sort(x2))
print(sort(x2, decreasing = TRUE))
x2[x2>7|x2<6]
max(x2)
min()


a<-c(6, 2, 7, 12, 0, 6, 3, 4, 0)
print(a)
a==0
which(a==0) display the index


#create a vector of 30 elemnts  by using c(),seq(), and :  sort elemnts in ascending and descending order
#display all values except 20th value 
#display 6th and 10 th element 
#display max and min value
#delete a vector 
#create two vectors and concatinate them 
#perfrom all arthimetic operations 







<-c(23,45,67,89,1,2,56,7,0,12,34,56,78,12,34,56,78,98,65,34,23,12,54,76,89,90,12,45,65)
#a<-seq(45,74)
#a<-30:59
print(sort(a))
print(sort(a, decreasing = TRUE))
a[a>15&a<35]
a[8]<='12'
print(a[-20])
print(a[6])a
print(a[10])
max(a)
min(a)
a<-NULL

x<-20:25
y<-10:15
z<-c(x,y)
#print(z)

print(x+y)
print(x-y)
print(x*y)
print(x/y)
print(x%%y)
print(x^y)



library(stringr)
