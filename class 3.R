MyFirstVector <- c(3,45,56,732)
MyFirstVector

is.numeric(MyFirstVector)
is.integer(MyFirstVector)
is.double(MyFirstVector)


V2 <- c(3L,12L,243L,0L)
is.numeric(V2)
is.integer(V2)
is.double(V2)


V3 <- c("a","B23","Hello")
V3
is.character(V3)
is.numeric(V3)


#sequence- like';'

seq(1,15)
1:15 #its a same as sequence but has less flexibility

seq(1,15,2)#the 2 here is the step value

z <- seq(1,15,4)
z

rep(3,100)
d <- rep(3,50)
rep("A",5)

x <- c(80,20)
y <- rep(x,10)
y


a <- c(1,123,534,13,4)
b <- c(201,250,11)
c <- rep("hi",3)


w <- c("a","b","c","d","e")
w


w[1]
w[2]
w[3]
w[-1]
v <- w[-3]
v
w[1:3]
 















