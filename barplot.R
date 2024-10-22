
#barplot(v,xlap,ylap,main,col,names,arg) v is the input vector , xlap used to label x axis y lap used to lable y axis main for title and col for color
a<-c(11,4,2,5,6,7,8,12)
barplot(a,main="Temp",xlab = "Month",ylab = "value",names.arg=c("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug"))


x<-c(100,45,67,22,35,98,56,67,74,91)

barplot(x,main="Marks",xlab="students",ylab="Range",names.arg=c("s1","s2","s3","s4","s5","s6","s7","s8","s9","s10"),border="Blue",col="Red",density=10,horiz=TRUE)
#change only border color border="color",density 
#cex.names=2 ces.axis=2,density =10 for expansion of x axis 
#convert horizontal plot to vertical horiz=TRUE
#lwd width of the line
data<-matrix(c(222,600,305,678,980,560,467,567),nrow=2,ncol=4)
data
result<-barplot(data,main="title",xlab="class",
                names.arg=c("1","2","3","4"),
                col=c("black","grey"),border="red",beside=TRUE)
legend("topleft",c("c1","c2"),fill=c("black","grey"))


#scatter plots used to compare variables .plot is used to create
#points function is used to compare two scatter plots
a<-c(1,2,3,4,8,10,12,15)
b<-c(45,67,99,56,83,29,38,71)
plot(a,b)
c<-c(4,6,8,10,12,2,1,3)
d<-c(97,86,75,64,53,42,31,101)
points(a,d)
plot(c,d)


#line graph 
a<-c(1,8,6,7,5,4)
plot(a,type="o",lty=1,pch=letters[1:6])
plot(a,type="s",lty=2) 
plot(a,type="l",lty=4) 
plot(a,type="b",lty=3)
plot(a,type="b",lty=6)
#lines two compare two line plots 
#lty has 6 values  ,pch plot character , xlin and ylin set limit for x and y axis 




#create 3 numeric vectors, represent theses vectors in a line graphs
#for 1st vector the type should be "s" and color green 
#for 2nd vector the type should be "o" and color blue 
#for 3rd vector the type should be "s" and color black
#compare all three line graphs


a<-c(26,35,88,99)
plot(a,type="s",col="green")
b<-c(32,56,78,54)
plot(a,type="o",col="blue")
c<-c(100,51,83,27)
plot(a,type="s",col="black")
lines(a,type="s",col="green")
lines(b,type="o",col="blue")
lines(c,type="s",col="black")
lines(c,type="l",col="yellow")



#create 2 vectors and represent these vectors as scatter plot
#create 2 more vectors represent these vectors as scatter plot and compare the scatter plot


a<-c(56,89,43)
b<-c(10,30,56)
plot(a,b)
c<-c(47,89,99)
d<-c(54,12,97)
plot(c,d)
points(a,b)
points(c,d)

#create a matrix and represent the matrix as stacked plot 

x<-matrix(c(12,34,56,78,98,65),nrow = 3,ncol = 3)
result<-barplot(x,main="title",xlab="class",
                names.arg=c("1","2","3"),
                col=c("black","white","grey"),border="red")
legend("topleft",c("c1","c2","c3"),fill=c("black","white","grey"))



#pie chart 
x<-c(24,56,2,90)
pie3D(x,main="Pie",col=c("yellow","orange","green","grey"))




