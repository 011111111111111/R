# # m <- c(2, 3, 4)
# # n <- c(6, 7, 8)
# # # arthimetic
# # print(m+n)
# # print(m-n)
# # print(m*n)
# # print(m/n)
# # print(m%%n)
# # # realtionl
# # print(m>n)
# # print(m<n)
# # print(m!=n)
# # print(m==n)
# # print(m>=n)
# # print(m<=n)
# # # logical
# # print(m & n)
# # print(m|n)
# # # assignment
# # print(m<-n)
# # print(m>-n)
# # print(m->>n)
# # print(n<<-m)
# # # miscellenous operator
# # x <- 5:10
# # print(x)
# # a <- c(12, 24, 36, 48, 56)
# # b <- 25
# # print(b%in%a)

# # a = readline()
# # b = as.integer(a)
# # print(b)


# #two ways to create vector using c funciton and sequence and third is using colon operator
# #class to find the type of class
# a <- c(1, 2, 3, 4)
# print(a)
# b<-seq(1, 10)
# print(b)
# c <- 1:10
# print(c)

# class(a)

# d<-c(1L, 2L, 3L)
# print(d)

# #accessing lements of vector by indexing
# print(a[-1]) #remove first element display all other elements



# #access 20 remove 19 
# a <- c(1, 2, 3, 4)
# print(a)
# b<-seq(1, 10)
# print(b)
# c <- 1:10
# print(c)

# class(a)

# d<-c(1L, 2L, 3L)
# print(d)


# #concatinating two vectors 
# a<-c(1, 2, 3)
#  b<-c(4, 5, 6)
#  z<-c(a,b)
#  print(z)


# #create a vector of 30 elemnts  by using c(),seq(), and :  sort elemnts in ascending and descending order
# #display all values except 20th value 
# #display 6th and 10 th element 
# #display max and min value
# #delete a vector 
# #create two vectors and concatinate them 
# #perfrom all arthimetic operations 







# a<-c(23,45,67,89,1,2,56,7,0,12,34,56,78.12.34.56.78.98.65.34.23.12.54.76.89.90.12.45.65)
# a<-seq(45,74)
# a<-30:59
# print(a[-20])
# print(a[6])
# print(a[10])
# max(a)
# min(a)
# a<-NULL

# x<-20:25
# y<-10:15
# z<-c(x,y)
# print(z)

# print(x+y)
# print(x-y)
# print(x*y)
# print(x/y)
# print(x%%y)

x=list(c("Amrit","Mansi","Mahima","Ankit"),
       c(20,21,22,30),
       c("mba","mca","bba","btech"),
       list("Delhi","Mumbai","Jammu","Kashmir"))
x[-which(unlist(x) == "mca")]