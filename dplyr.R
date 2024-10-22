install.packages("dplyr")
library("dplyr")
#data manipulation in dataframes 
#slect filter arrange mutate rename distinct groupby summarize
a=1:10

a<-data.frame(c1=c(1,2,3,4,5),
                    c2=c("a","b","c","d","e"),
                    abc3=c(66,7,8,9,10),
                    c4=c("k","l","m","n","o"),
                    c5=c(111,12,130,14,15),
                    c6=c("f","g","h","i","j"),
                    c7=c(16,17,18,19,20),
                    c8=c("p","q","r","s","t"),
                    c9=c(21,22,23,24,25),
                    c01=c("u","v","w","x","y"))
a
b<-select(a,c(1,3,5,7,9))
b
c<-select(a,3:8)
c
d<-select(a,c(-7,-10))
d
e<-select(a,starts_with("abc"))
e
f<-select(a,-starts_with("c"))
f
g<-select(a,ends_with("1"))
g
h<-select(a,-ends_with("1"))
h
i<-select(a,contains("c"))
i

#filter used to extract rows with conditions 
j<-filter(a,c5>13) 
j
k<-filter(a,c01>23,c1>1)
k
#arrange 
l<-arrange(a,desc(c5))
l


a=iris
View(iris)
a
b<-select(a,1:3)
b
c<-select(a,starts_with("Se"))
c
d<-mean(a$Sepal.length[a$Species == "virginica"])
round(d)
library(datasets)
data(iris)

d=data.frame(name=c("Abhishek","Amrit","Rita","Mansi","Arun"),
             age=c(20,19,21,20,20),
             ht=c(5,6,5,6,5),
             marks=c(8,10,7,9,8))
d
b<-filter(d,age<20)
b
c<-select(d,contains("A"))
c
##mutate(input data frame, name of the barianle, data to be added in the variable) prints all the dataframe values 
##trasnmute only prints the added one
e<-rename(d,height=ht)
eg<-rename(d,grade=marks)
eg

## rename(dataframe input, new name = old name)
##summmarized used to find mean median max min value from the dataframe
f<-summarise(d, mean=mean(age))

f
f<-summarise(d, med=min(age))
f
h<-transmute(d,add=ht+age)
a<-read.csv("C://Users//sreedevi//Downloads//diabetes (1).csv")
a
b<-select(a,c(1))
b
c<-select(a,2:4)
c
d<-select(a,c(-7,-10))
d
o<-select(a,contains("1"))
o
e<-filter(a,BloodPressure>75)
e
p<-filter(a,Glucose>120)
p
q<-filter(a,Insulin<20)
q
r<-filter(a,Age>40)
r
s<-filter(a,BMI>30)
s
ei<-arrange(a,desc(BMI))
ei
j<-rename(a,BodyMassIndex=BMI)
j
k<-transmute(a,add=BMI*Pregnancies)
k
l<-summarise(a,n=min(BMI))
l
m<-summarise(a,o=max(Pregnancies))
m
n<-mutate(a,add=Glucose+Insulin)
n


#extrat 4th column
#extract all columns expect 4
#extract 1st 3rd and 4th columns
#extract all columns whose name start with "s
#extract all columns whose name ends with "s"
#extract all columns whose name starts with "h'
#extract all columns that contains "l"
#extract columns from 3 to 5
#extract all the rows where Species=setosa
#find median of 1st column
#find max of 2nd column
#find min of 3rd column
#find mean of 4th column 
a=iris
View(iris)
str(iris)
a
b<-select(a,4)
b
c<-select(a,(-4))
c
d<-select(a,c(1,3,4))
d
e<-select(a,starts_with("s"))
e
f<-select(a,ends_with("s"))
f
g<-select(a,starts_with("h"))
g
h<-select(a,contains("l"))
h
i<-select(a,c(3:5))
i
j<-filter(a,Species=="setosa")
j
k<-summarise(a,Median=median(Sepal.Length))
k
l<-summarise(a,Max=max(Sepal.Width))
l
m<-summarise(a,Min=min(Petal.Length))
m
n<-summarise(a,Mean=mean(Petal.Width))
n

#%<% pipe operator 
library(dplyr)
df <- iris
df
View(iris)
str(iris)
df%>%select(Sepal.Length,Petal.Length,Species)%>%
  filter(Species == "setosa" & Petal.Length >1.4 & Sepal.Length > 3.5)
df%>% filter(Species == "setosa" & Petal.Length >1.4 & Sepal.Length >3.5)%>%
  mutate(SL=Sepal.Width)%>%
  select(Sepal.Length,Petal.Length,Species,SL)






#question 1


#extract sepal.width,petal.width and specied from Iris dataset 
#and from these columns extract rows where Species is versicolor 
#Sepal.Width is less than 3.0 amd Petallength is less than 4.0
df %>% select(Sepal.Width,Petal.Width,Species)%>%
  filter(Species == "versicolor" & Sepal.Width<3.0 & Petal.Width < 4.0)


#question 2


#extract rows where Species is versicolor 
#Sepal.Width is less than 3.0 amd Petallength is less than 4.0
#add one more column /variable 
#extract newly added variable, Sepal.Width,Petal.Width and Species
df %>% filter(Species == "versicolor" & Sepal.Width<3.0 & Petal.Width<4.0)%>%
  mutate(New=Petal.Length+Sepal.Length)%>%
  select(New,Sepal.Width,Petal.Width,Species)
head(df,n=20)
tail(df,n=15)
df%>% filter(Species == "setosa" & Petal.Length>1.4 & Sepal.Width>3.5)%>%
  mutate(SL= Sepal.Width)%>%
  select(Sepal.Length,Petal.Length,Species,SL)%>%
  summarise(mean(Sepal.Length),max=max(SL))


 


t
install.packages("tidyr")
library(tidyr)