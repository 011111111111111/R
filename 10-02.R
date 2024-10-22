v1=c(1,2,3,4)
v1=c(5,6,7,8,9,10)

v3=array(c(v1,v2),dim=c(3,3,2))
result = apply(v3,c(1),sum)
result

result = apply(v3,c(2),sum)
result

a=seq(1,10,by=3)
b=seq(1,10,length.out=5)
a
b

c=c(10,20,30,40)
rep(c[1],2)
rep(c[2],3)
rep(c[3],6)
#display 10 two times 
#print 20 3 times
#print 30 4 times
x=list(c("Amrit","Mansi","Mahima","Ankit"),
       c(20,21,22,30),
       c("mba","mca","bba","btech"),
       list("Delhi","Mumbai","Jammu","Kashmir"))

