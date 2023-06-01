# Basic Commands

# create a vector
x<-c(1,2,3,4)
x
y<-c(4,3,2,1)
y
# length of a vector
length(x)
length(y)
# add vectors
x + y
# list all objects
ls()
# remove objects
rm("x","y")
ls()
# remove all objects at once
rm(list = ls())
# learn more about a function
?matrix
#create a vector
x<-matrix(c(1,2,3,4),nrow = 2,ncol = 2)
x
# populate matrix by row
matrix(c(1,2,3,4),2,2,byrow = TRUE)
# math functions on matrix
sqrt(x)
x ^ 2
# vector of normal random variables
x <- rnorm(50) #default mean=0, sd = 1
y <- x + rnorm(50,50,0.1)
# compute correlation
cor(x,y)
# statistical functions
set.seed(3)
y <- rnorm(100)
# mean
mean(y)
# variance
var(y)
# standard deviation
sqrt(var(y))
sd(y)

# Graphics

# plotting in R
x <- rnorm(100)
y <- rnorm(100)
plot(x,y, xlab = "Some X axis label", ylab = "Some Y axis label", main = "Plot of X vs Y")
# saving the plot as PDF
pdf("Figure.pdf")
# saving the plot as JPEG
plot(x,y,col="green")
jpeg("Figure.jpeg")
dev.off() # we're done creating plots
# create sequence of numbers
x <- seq(1,10)
x
x<-1:10
x
x <- seq(-pi, pi, length=50)
x
# contour plots
y <- x
f <- outer(x,y,function(x,y) cos(y)/(1+x^2))
contour(x,y,f)
contour(x,y,f,nlevels=45,add=T)
par(mar = c(1, 1, 1, 1))
fa <- (f-t(f)) / 2
contour(x,y,fa, nlevels = 15)
# heatmaps
image(x,y,fa)
# three dimensional plot
persp(x,y,fa,theta = 30) # theta and phi control the angles at which plot is viewed
persp(x,y,fa,theta = 30, phi = 20)        
persp(x,y,fa,theta = 30, phi = 70)        
persp(x,y,fa,theta = 30, phi = 40)        

# Indexing data

A <- matrix(1:16, 4, 4)
A
A[2,3]
A[c(1,3),c(2,4)]
A[1:3, 2:4]
A[1:2,]
A[,1:2]
A[1,]
A[-c(1,3),]
A[-c(1,3),-c(1,3,4)]
# shape of matrix 
dim(A)

# Loading Data

Auto <- read.table("Auto.data")
View(Auto)
head(Auto)
Auto <- read.table("Auto.data", header = T, 
                   na.strings = "?", stringsAsFactors = T)
View(Auto)
dim(Auto)
Auto <- na.omit(Auto)
dim(Auto)
names(Auto)

# Additional Graphical and Numerical Summaries

plot(Auto$cylinders, Auto$mpg)
Auto$cylinders <- as.factor(Auto$cylinders)
plot(Auto$cylinders, Auto$mpg)
plot(Auto$cylinders,Auto$mpg,col="red")
plot(Auto$cylinders,Auto$mpg,col="red", varwidth = T)
plot(Auto$cylinders,Auto$mpg,col="red", varwidth = T, horizontal = T)
plot(Auto$cylinders,Auto$mpg,col="red", varwidth = T, horizontal = T,
     xlab = 'cylinders', ylab = 'MPG')
hist(Auto$mpg)
hist(Auto$mpg,col = 2)
hist(Auto$mpg,col = 2, breaks = 15)
pairs(Auto)
attach(Auto)
pairs(~ mpg + displacement + horsepower + weight + acceleration, data = Auto)
plot(horsepower, mpg)
identify(horsepower,mpg,name)
summary(Auto)
summary(mpg)
