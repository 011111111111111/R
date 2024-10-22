x<-c(1,2,3,4,5)
y<-c(3,4,2,4,5)
relation<-lm(y~x)
summary(relation)
data(iris)
model<-lm(Sepal.Length~Petal.Length,data=iris)
summary(model)
plot(iris$Petal.Length,iris$Sepal.Length,
     main="Linear Regression on iris data",
     xlab="Petal Length",
     ylab="Sepal Length",
     pch=19,
     col="blue")
abline(model,col="red")
a<-read.csv(file.choose())
model2<-lm(src_bytes~dst_bytes,data=a)