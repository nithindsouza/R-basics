#################Problem 1##############################################
# Problem 1: Import the given dataset and check for 'NA' values in it using 
#the appropriate function. Now follow the given steps to manipulate your data:
#   Note: - Use Data Manipulation Dataset.
# a)	Create a new data frame using the given data frame 
#(i.e. the given dataset) by removing the 'NA' values.
# b)	Consider the given dataset to replace the first NA value in the 
#dataset with your name in that place.
# c)	Find the factor of each column in the dataset
# d)	Find the class of each column in the dataset
# e)	Find the structure and summary of the dataset.

install.packages("readxl")
library(readxl)
df1 <- read.csv("C:\\Users\\hp\\Downloads\\R- Programming\\Data_Manipulation.csv")
is.na(df1)    #checking for NA values
sum(is.na(df1))   #counting NA values

new_df1 <- na.omit(df1)   #removing NA values
is.na(new_df1)
sum(is.na(new_df1))

NAindex <- which(is.na(df1),arr.ind = TRUE)   #replacing fist NA value with "nithin"
frow <- NAindex[1,1]
fcol <- NAindex[1,2]
df1[frow,fcol] <- "nithin"

df1$experience <- as.factor(df1$experience)   #finding factor of each columns in DF
df1$scores <- as.factor(df1$scores)
df1$gender <- as.factor(df1$gender)
df1$admission_status <- as.factor(df1$admission_status)

class(df1$index)          #finding class of each column in DF
class(df1$experience)
class(df1$scores)
class(df1$gender)
class(df1$admission_status)

str(df1)    #structure of DF
summary(df1)  #summary of DF

############################Problem 2####################################
# Problem 2: Use R to create the following two matrices and do the indicated matrix 
#multiplication.      

mat1 <- matrix(c(7,9,12,2,4,13), nrow = 2, ncol = 3, byrow = TRUE)
mat2 <- matrix(c(1,7,12,19,2,8,13,20,3,9,14,21), nrow = 3, ncol = 4, byrow = TRUE)
ans <- mat1%*%mat2#multiplication of 2 matrices using * operator
print(ans)

#########################Problem 3#######################################
# Problem 3: Use R to create the following two matrices and multiply each value to its 
#successive position.

mat3 <- matrix(c(1,2,3,4,5,6,7,8,9), nrow = 3, ncol = 3, byrow = TRUE)
mat4 <- matrix(c(1,4,7,2,5,8,3,6,9), nrow = 3, ncol = 3, byrow = TRUE)

ans1 <- mat3*mat4#multiplying each value to its successive position
print(ans1)
