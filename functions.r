###########################Problem 1#####################################
# Problem 1: Divide 743 by 2 and obtain the result such that the output 
# gives us a value without the decimal point.
743%/%2   #integer division 

#####################Problem 2##########################################
# Problem 2: Print a 3*4 array of three dimensions, which has the input of 
# vectors sequencing from 13554:13590 and index the second row and third 
# column element of third dimension of the array.
x <- array(c(13554:13590),dim = c(3,4,3))#creating a array of 3*4 of 3 dimension
x[2,3,3]  #accessing 2nd row 3rd column of 3rd dimension of array

############################Problem 3########################################
# Problem 3:  What is the command to install a package in R and how 
# do you invoke it?
install.packages("packageName")#syntax to instal a package
library(pacakgeName)#syntax to invoke a library
#Example
install.packages("readr")
library(readr)
#######################Problem 4########################################
# Problem 4: Create an if statement that prints the name of the team that won.
# .	Where Team A scored 678 (out of 700), Team B scored 666 (out of 700).

Ascore <- 678 #assigning team scores in a variable
Bscore <- 666
#using if statement to print name of team who scored more.
if(Ascore > Bscore)print("Team A");if(Ascore < Bscore)print("Team B");if(Ascore == Bscore)print("Team A & Team B")

#######################Problem 5########################################################
# Problem 5: Check whether the given number is positive and divisible by 5 
# or not using conditional statements. (Hint: Use both if and else statements) 
# Given number: 468

num <- as.numeric(readline("Enter a number:")) #reading a number as 
#numeric from the console then compile below if statement 
if(num> 0){     #checking for positivity
  print("number is positive")
  if(num %% 5 == 0){  #checking presence of remainderfor +ve number
    print("div by 5")
  }else {
    print("not div by 5")  #printing suitable message
  }
} else{
  print("Number is negative")
  if(num %% 5 == 0){ #checking remainder for a -ve number
    print("div by 5")
  }else {
    print("not div by 5")
  }
}

############################Problem 6#####################################
# Problem 6: Given is a formula of Normalization.
# 
# 
# 
# Create a user defined function 'z' such that you define the given formula within it. 
# Where, using max(x) and min(x) in R gives you the minimum and maximum value of x.

z <- function(x){   #declaring a function z with arguemnt x
  a = ((x-min(x))/(max(x)-min(x))) #calculting values usimg min and max function
  return(a)   #returning value
}

#########################Problem 7 ##################################### ###
# Problem 7: If 'a' is the given vector. What is the output when you apply the user 
# defined Normalizing function 'z ()' to it? 
#[Hint: This question is the continuation of Problem 6]
# a<-c(33,434,242,434354,545,54,56,56,4534,5342,24,5,65,65,767,8,78,79,79,
#      64,635,3,4,35,57,678,5,86,86,457,546,34,345,34,3,4,65,6,57, ,347) 

b<-c(33,434,242,434354,545,54,56,56,4534,5342,24,5,65,65,767,8,78,79,
     79,64,635,3,4,35,57,678,5,86,86,457,546,34,345,34,3,4,65,6,57,347)
Normb <- z(b)
print(Normb)

###########################Problem 8#######################################
# Problem 8: Achieve a Boxplot, Histogram and scatter plot on a given 
# data 'Q1'. Use any column/columns to get the respective outputs.
q1 <- read.csv("C:\\Users\\hp\\Downloads\\R- Programming\\Q1.csv")
install.packages("ggplot2")
library(ggplot2)
#creating boxplot for all variables in Q1
box1 <- boxplot(q1$datasrno)
box2 <- boxplot(q1$workex)
box3 <- boxplot(q1$gmat)

#creating histogram for all variables in Q1
hist1 <- hist(q1$datasrno)
hist2 <- hist(q1$workex)
hist3 <- hist(q1$gmat)

#creating scatter plot using ggplot
scat1 <- ggplot(q1,aes(datasrno,workex,color = gmat)) + geom_point()
scat1
#creating scatter plot using qplot
scat2 <- qplot(datasrno,workex,data = q1,color = gmat,geom = "point")
scat2
