#first create a vector and convert it into factor
a=c("true","false","true","false")
a
b=factor(a)
b
a[1]
a[c(2,4)]
a1=c("yes","no","yes","no","yes")
a2=factor(a1)
a2
a1[c(1,2)
levels(a2)=c(levels(a2),"true')
a2[1]="true""
          
pint(a2)
a3=c("a","b","c","a","b","b")
a4=factor(a3)

a4 
#levels are always named alphabetically and to change the order of levels 
x=c("west","north","east","south","west","south","east","north")
z=factorly.levels=c("west","east","north","south")
y[c("TRUE","FALSE","FALSE","TRUE")]



#create a factor of 10 elements
#access 8 th value
#acess 6th and 9 th value 
#access 1s t , 2nd 3rd and 4th value
#acesss all values except 7th value
#access all value except 5th and 10 th values 
#access all value ecvept 6th,7th,8th 9 th values 
#access all values  except 2nd 4th and 6th 
#modify the valeue of 3rd element
#modify the value of 7th element
#add 3 more levels
#after adding levels modify the value of 8th and 10 th vakues
#change order of levels
#generate 4 factor levels and repeat them 5 times



a=c("now","when","why","who","who","why","when","now","who","when")
b=factor(a)
a[8]
a[c(6,8)]
a[1:4]
a[-7]
a[c(-5,-10)]
a[-6:-9]
a[c(-2,-4,-6)]
a[3]="now"
a[7]="why"
levels(b)=c(levels(b),"how")
levels(b)=c(levels(b),"few")
levels(b)=c(levels(b),"some")
a[11]="how"
a[12]="few"
a[13]="some"
a[11]
a[12]
a[13]
a[8]="now"
a[10]="few"
a[8]
a[10]
c=factorly.levels=c("now","how","some","when","why","few","who")
c

d=gl(4,5,labels=c("7","8","9","10"))
d

#gl used for generating the level number of values and how many times they are going to be repeated 
s=gl(3,5,labels=c("R","DBMS","PYTHON"))
#gl(no of levels,no of times repeated,labels)

s