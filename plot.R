install.packages("plotrix")
install.packages("ggplot2")
library(ggplot2)


#DATA 
View(iris)
ggplot(data=iris)


#AESTHETICS
p=ggplot(data=iris,aes(x=Sepal.Length,y=Sepal.Width))


#GEOMETRY
p+geom_point()


#FACET create subgraphs
ggplot(data=iris,aes(x=Sepal.Length,y=Sepal.Width))+
  geom_point()+facet_wrap(~Species)+geom_smooth(method="lm")


# COORDINATE LAYER
library(dplyr)
ggplot(filter(iris,Species=="setosa"),
       aes(x=Sepal.Length,y=Sepal.Width))+
  geom_point()+
  coord_cartesian(xlim = c(4,8),ylim = c(2,5))
installed.packages("plotly")

#THEME
ggplot(data=iris,aes(x=Sepal.Length,y=Sepal.Width,col="red"))+
  geom_point()+facet_wrap(~Species)+geom_smooth(method = "lm")+
  theme(axis.text=element_text(color="violet",size=12))


View(mtcars)
ggplot(Data=mtcars)
ggplot(data=mtcars,aes(x=hp,y=wt))
ggplot(data=mtcars,aes(x=hp,y=wt))+geom_point()
ggplot(select(mtcars,drat>3.50),
       aex(x=hp,y=wt))+geom_point()
ggplot(data=mtcars,aes(x=hp,y=wt))+geom_point()+facet_wrap(~drat)+geom_smooth(method = "lm")


#heatmap we should the the data in matrix
class(mtcars)
#as.matrix used to convert data frame into matrix 
x<-as.matrix(mtcars)
dim(mtcars)
library(dplyr)
heatmap(x,scale="column")
heatmap(x,scale="column",Colv = NA,Rowv = NA,
        col=cm.colors(256),xlab = "Variable",ylab="car")

y<-as.matrix(iris[,c(1:4)])
class(y)
heatmap(y,scale="column",Colv = NA,Rowv = NA,
        col=cm.colors(267))
str(iris)


read.csv(file.choose())
install.packages("plotly")
View(mtcars)
library(plotly)
df=mtcars
df$name<-row.names(mtcars)
plot_ly(data=df,x=~cyl,y=~disp,color=~factor(cyl),text=~name)   #different color along 4 6 8
plot_ly(data=df,x=~mpg,y=~disp,color=~factor(disp),text=~name)  #different color along the y axis4


attach(iris)
#to call the columns independently we use attach withoout using any functions 
hist<-plot_ly(x=Sepal.Length,type="histogram",color="violet")  #to assign names for the existing plot we use layout we should take it only in the form of list
layout(hist,title="iris dataset",
       xaxis=list(title="Sepal.Length"),
       yaxis=list(title="count"))


#pipe operator %>%
library(dplyr)
fig<-plot_ly(x=c("vegetables","beverages","dairy"),
             y=c(20,15,17),
             type="bar",
             color="grey")
fig
fig%>%layout(title="sales by parts",
              xaxis=list(title="parts"),
              yaxis=list(title="number of sold product"))





Parts<-c("beverages","vegetable","dairy")
sales_2019<-c(45,67,89)
sales_2020<-c(76,54,34)
df<-data.frame(Parts,sales_2019,sales_2020)
fig<-plot_ly(ata=df,x=Parts,y=sales_2019,type="bar",
             name="2019 sales")
#add trace() used to specify second argument of y axis trace in plotly is a layer of data that is plotted on graph
fig<-fig%>%layout(title="2019vs 2020",
                  xaxis=list(title="parts"),
                  yaxis=list(title="no of sales"),
                  barmode="group")
fig



#donut
df<-data.frame(value=c(10,20,30,50),
               group=paste0("G",4:7))
df
library(ggplot2)  #represent 
library(dplyr)  #to use mutate
hsize<-4
df<-df%>%
  mutate(x=hsize)
df
ggplot(df,aes(x=hsize, y=value,fill=group))+
  geom_col()+
  coord_polar(theta="y")+
  xlim(c(0.2,hsize+0.8))


