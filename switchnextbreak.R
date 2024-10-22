a=10
if(a>5){
  cat("a is greater than 5")
}else{
  cat("a is smaller than 5")
}

#switch is implemented by two ways index value and matching value 
indexing
b = 1
a=switch(b,
         "Hello",
         "world",
         "DBMS")
a



#example 1 indexing
a="20"
x=switch(a,
         "1"="Nice",
         "2"="Words",
         "10"="Speak",
         "20"="Spoken")
x
#example 2 indexing
Class="R"
y=switch(Class,
         "R"="End",
         "Java"="End",
         "AI"="Mid+End",
         "DAA"="Mid+End")
y
#example 3 indexing
marks="90"
z=switch(marks,
         "100"="O Grade",
         "90"="A+ Grade",
         "80"="A Grade")
z
#example 4 indexing
a="Present"
b=switch(a,
         "Present"="Eligible for exam",
         "Absent"="Not Elgible for exam")
b
#example 5 indexing
x="A"
y=switch(x,
         "A"="Vowel",
         "E"="Vowel",
         "I"="Vowel",
         "B"="Consonant")
y



a=5
b=switch(a,
         1==1,
         2==2,
         3==3,
         4==4,
         5==5)
b

a=c(1:6)
for (val in a){
  if (val == 6){
    next
  }
  print(val)
}
no <- 1:10

for (val in no) 
{ 
  if (val == 5) 
  { 
    print(paste("Coming out from for loop Where i = ", val)) 
    break
  } 
  print(paste("Values are: ", val)) 
} 


# R Break Statement Example 
a<-1    
while (a < 10) 
{     
  print(a)     
  if(a==5)     
    break   
  a = a + 1    
}

w=LETTERS[1:30]
for (val in w){
  print(val)
}
v=letters[5:26]
for (i in v){
  print(i)
}
v=c("Hello World")
c=1
repeat {
  print(v)
  c=c+1
  if(c==5){
    break
  }
}

a=c("Hello")
b=4
repeat {
  print(a)
  b=b-1
  if(b<1)
    break
}
b=c("R porgramming")
d=6
repeat {
  d=d-1
  print(b)
  if(d<10)
    break
}


#create a vector and arrange elements in descending order
#create a vector of 20 elements and display all elements except 2nd 4th 6th and 8th elements
#create a list that contians elements of typw integer, numeric, complex and logical numbers
#extract only numeric elements
#extrct all elements except logical elements
#create an array where dimensions = 4,4,4
#assign names to rows, columns and matrix
#change the value of 1st row of 2nd array/matrix by 9
#extract 2nd , 3rd and 4th column of 3rd matrix/array
#change the vlaue of 3rd column of 4th matrix array


a=
a

