a<-read.csv("C://Users//sreedevi//Downloads//Prostate_cancer.csv")
head(a)
tail(a)
dim(a)#rows columns
a[1,] #first row
a[,1] #first column
a[c(1:3),]
a[,c(5:7)]
a[1,3]
a[20,7]
subset(a,texture>20,select=c(diagnosis_result,radius))
subset(head(a,n=15),select=c(radius,smoothness))
subset(head(a,n=15),select=c(perimeter,area))
subset(a,radius<10)
subset(a,80<id,select=c(id))
subset(a,id<100&id>80,select=c(id))
#subset(a,select=-id)
min(a$id)
min(a$radius)
min(a$area)
min(a$perimeter)
min(a$diagnosis_result)
min(a$texture)
min(a$smoothness)
min(a$compactness)
max(a$id)
max(a$diagnosis_result)
max(a$radius)
mean(a$id)
mean(a$diagnosis_result)
mean(a$texture)
median(a$id)
median(a$area)
mode(a$id)
mode(a$smoothness)
View(a) 
#display 1st row
#display 1sr 2nd and 3rd row
#display 3rd column
#display 5 th 6th 7th columns
#display element in the 1st row and 3rd column
#display element in the 20th row and 7th column
#display diagnosis_result and radius whose texture is greater than 20
#display radius and smoothiness of 1st 15 person in the dataset
#display perimenter and area of 1st 15 person in the data set
#display all the data of person whose radius is less tahan 10
#with the id of the patient falls in the id group if 80 to 100
