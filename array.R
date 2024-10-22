a<-c(1L,2L,3L)
print(a)
b<-c(a,b,c,d)
print(b)
c<-c(TRUE,FALSE,FALSE,TRUE)
print(c)
list1<-list("a,b,c,d","12,34,56","A,B,C")
name(list1)<-c("students","marks","grades")
list1
print(list1[1])

#create a list 
print(list2[1]) #by indexing
print(list2[2])
print(list2[3])
print(list2["marks"])
print(list2["students"])
print(list2["courses"])
print(list2[3][2])

#converting list to vector using unlist() funcion
list3<- list(1:5)
list4 <- list(6:9)
vector1<-unlist(list3)
vector1
vector2<-unlist(list2) #converts everything to string if one string is involved
vector2


#create a list containing chrecter, integer, logical,complex and names
#access elemts of the list bynaming and indexing and dollor sign
#access 3rd element of 3rd subset
#access 1st element of second subset
#access 2nd element of first subset
#create 3 lists and merge them
#modify 2nd element if 2nd subset
#modify 1st element of first subset
#modify 3rd element of 3rd subset
#convert list into a vector
#delete first subset f a list

# create a list containing character, integer, logical, complex and names
my_list <- list("a" = "apple", "b" = 3, "c" = TRUE, "d" = 1+2i, "e" = list(letters[1:5]), names = c("one", "two", "three", "four", "five"))

# access elements of the list by name
my_list$a
my_list[["b"]]
my_list[["c"]]
my_list[["d"]]
my_list[["e"]]$letters[3]
my_list[["names"]][1]

# access elements of the list by indexing and dollar sign
my_list[[1]]
my_list[[2]]
my_list[[3]]
my_list[[4]]
my_list[[5]]$letters[3]
my_list[[6]][1]

# access 3rd element of 3rd subset
my_list[[3]][[1]]

# access 1st element of second subset
my_list[[2]][[1]]

# access 2nd element of first subset
my_list[[1]][2]

# create 3 lists and merge them
list1 <- list("a" = 1, "b" = 2)
list2 <- list("c" = 3, "d" = 4)
list3 <- list("e" = 5, "f" = 6)
merged_list <- c(list1, list2, list3)

# modify 2nd element of 2nd subset
merged_list[[2]][[2]] <- 10

# modify 1st element of first subset
merged_list[[1]][[1]] <- 100

# modify 3rd element of 3rd subset
merged_list[[3]][[3]] <- 200i

# convert list into a vector
my_vector <- unlist(my_list)

# delete first subset of a list
my_list <- my_list[-1]


#arrays
#single dimensional array
#array() function with 1 parameter and data
#syntax: array(data)
a <- c(5,10,15,20,25,30)
b<-c(1,2,3,4,5,6)
arr<- array(a)
arr
arr<-array(a,dim=c(2,2,3))
arr
v1 <- c(1,2,3)
v2<- c(4,5,6,7,8,9)
v3<- array(c(v1,v2),dim=c(3,3,2))
v3
v4 <- c(1,2,3)
v5 <- c(4,5,6,7,8,9,10,11)
v6 <- array(c(v4,v5), dim = c(3,3,2))
v6

#naming the array
col_name<-c("c1","c2","c3")
row_name<-c("r1","r2","r3")
mat_name<- c("mat1","mat2")
v6 <- array(c(v4,v5),dim=c(3,3,2),dimnames =list(row_name,col_name,mat_name))
v6
#dim noof rows no of columns no of matrixes created 

#accessing elements in a arreay
print(v6[3,,2])#displays 3rd row of second matrix
print(v6[c(2,3),,1])#displays 2nd and 3rd row of 1st matrix
#first position represent row and second position represents column
print(v6[3,2,2])#element in 3rd row and 3rd column of 2nd matrix
print(v6[2,2,1])#element in 2nd row and 2nd column of 1st matrix
print(v6[,2,1])#prints second column of 1st matrix
print(v6[,c(1,2),1])
print(v6[,,1])
print(v6[,,2])