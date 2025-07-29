while(TRUE){
  print("HELLO")
}

while(FALSE){
  print("HELLO")
}

counter<-1
while(counter < 12 ){
  print(counter)
  counter<-counter+1
}

for(i in 1:5){
  print("Hello R")
}

for(i in 6:10){
  print("Hello World")
}

rm(answer)
x <- rnorm(1)

if(x>1){
  answer<-"Greater than 1"
}else if (x>=-1){
  answer<-"Between -1 and 1"
}else{
  answer<-"Less than -1"
}

#Vectors 15/07/2025

MyFirstVector <- c(3,45,56,732)
MyFirstVector
is.numeric(MyFirstVector)
is.integer(MyFirstVector)
is.double(MyFirstVector)

V2 <- c(3L,12L,243L,0L)
is.numeric(V2)
is.integer(V2)
is.double(V2)

V3 <- c("a","B23","Hello",7)
V3
is.character(V3)
is.numeric(V3)

seq() #sequence - like ':'
rep() #replicate

seq(1,15)
1:15

seq(1,15,2)
z <- seq(1,15,4)
z

rep(3,50)
d <- rep(3,50)
rep("a",5)

x <- c(80,20)
y <- rep(x,10)
y

x <- c(1,123,534,13,4)  #combine
y <- seq(201,250,11)    #sequence
z <- rep("Hi!",3)       #replicate

w <- c("a","b","C","d","e")
w

w[1]
w[2]
w[3]
w[-1]
v <- w[-3]
w[1:3]
w[3:5]
w[c(1,3,5)]
w[c(-2,-4)]
w[-3:-5]
w[1:2]

x <- rnorm(5)
x

#R-specific programming loop

for(i in x){
  print(i)
}

print(x[1])
print(x[2])
print(x[3])
print(x[4])
print(x[5])

#conventional programming loop

for(j in 1:5){
  print(x[j])
}


N <- 100
a <- rnorm(N) 
b <- rnorm(N)

#Vectorized approach

c <- a * b

#De-Vectorized approach

d <- rep(NA,N)
for(i in 1:N){
  d[i] <- a[i] * b[i]
}


rnorm(5)

rnorm(5,10,8)

rnorm(n=5,sd=8,mean=100)

rnorm(n=5,sd=8)

seq(10,20,3)

seq(from=10,to=20,by=3)

seq(from=10,to=20,length.out=100)

x <- c("a","b","c")
A<-seq(from=10,to=20,along.with = x)

rep(5,10)

rep(5:6,10)

rep(5:6,times = 10)

rep(5:6,each = 10)

rep(x,times = 5)

rep(x,each = 5)

B <-sqrt(A)
B

#packages

install.packages("ggplot2")

?qplot()

?ggplot()

?diamonds

library(ggplot2)

qplot(data=diamonds,carat,price,colour=clarity,facets=.~clarity)
