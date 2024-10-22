v=c("Hello world")
cnt = 2
while(cnt < 10){
  print(v)
  cnt=cnt+1
}
a=1
while(a<6){
  if(a>4)
    break
  print(a)
  a=a+1
}
a = 1
while(a < 10){
  if(a == 5){
    a = a + 1
    next
  }
  print(a)
  a = a + 1  
}

{
  n=as.numeric(readline("enter a value "))
  cat("numbers from ",n,"to 0")
  while(n>=0){
    print(n)
    n=n-1
  }
}

#print values from 100 to -10
{
     n=as.numeric(readline("Enter the value"))
     cat("numbers from 0 to",n)
     while(n>=-10){
         print(n)
         n=n-1
       }
   }

#print values from 100 to 50
 {
     n=as.numeric(readline("Enter the value "))
     cat("numbers from ",n,"to 50")
     while(n>=50){
         print(n)
         n=n-1
       }
   }


#print values from 1 to 25
{
  n=as.numeric(readline("Enter the value "))
  while(n<=25){
    print(n)
    n=n+1
    #if(n==20)
      #break
  }
} 
x=1
while(x<=10){
  if(x%%2==0){
    print(paste(x, "is even"))
  } else{
    print(paste(x,"is odd"))
  }
  x=x+1
}


#print odd numbers from 100 to 1

x=100
while(x>=1){
  if(x%%2==1){
    print(x)
  }
  x=x-1
}

#print event numbers between 1 to 1000
x=1
while(x<=1000){
  if(x%%2==0){
    print(x)
  }
  x=x+1
}

#take einput and find whether it is palindrome or not 
{
n=as.integer(readline("enter the number "))
m=n
r=0
while(n>0){
  z=n%%10
  r=r*10+z
  n=as.integer(n/10)
}
if(m==r){
  print("Given input is palindrom ")
} else{
  print("Is not palindrome")
}
}


#take input and find whetehr it is a armstrong number or not 

