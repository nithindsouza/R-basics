##########################Problem 1#########################################
# Problem 1: Perform all the arithmetic operations (Addition, Subtraction, 
#Multiplication, Division, Exponent, Modulus, Integer Division) on the 
#given vectors:
#   a = c(8.2, 3, 6, 1.4), b = c(2, 4, 8, 6)
#   
a <- c(8.2, 3, 6, 1.4)
b <- c(2, 4, 8, 6)

add1 <- a+b#adding 2 vectors
print(add1)

sub1 <- a-b#substracting 2 vectors
print(sub1)

mul1 <- a*b#multiplying 2 vectors
print(mul1)

div1 <- a/b#division of 2 vectors
print(div1)

exp1 <- a**b#exponent operator of 2 vectors
print(exp1)

mod1 <- a%%b#modulus of 2 vectors
print(mod1)

intDiv <- a%/%b#integer divsion of 2 vectors
print(intDiv)

#######################Problem 2##########################################
# Problem 2: Prove associative law (which means that rearranging the 
#parentheses in an expression will not change the result) for addition and
#multiplication using the given vectors. Find the LHS (Left Hand side) and 
#RHS (Right Hand Side) and then compare both using relational operators to 
#prove the law.
# a = c(8.2, 3, 6, 1.4), b = c(2, 4, 8, 6), c = c(1, 2.2, 2.6, 5)

x <- c(8.2,3,6,1.4)
y <- c(2,4,8,6)
z <- c(1,2.2,2.6,5)
# x+(y+z) == (x+z)+z proving associative for addition
lhs <- x+(y+z)
rhs <- (x+y)+z
lhs == rhs#if true LHS = RHS hence additive associative is proved

# x*(y*z) == (x*y)*z proving associative for multiplication
lhs1 <- (x*y)*z
rhs1 <- x*(y*z)
lhs1 == rhs1 #if true LHS = RHS hence multiplicative associative is proved

########################Problem 3########################################
# Problem 3: Create a 2x4 matrix and find the result of multiplication of 
# the matrix with its transpose using an appropriate in-built method.
mat1 <- matrix(c(1:8), nrow = 2, ncol = 4,byrow = TRUE)#creating a 2*4 matrix
mat2 <- t(mat1)#transposing matrix
ans <- mat1%*%mat2#multiplication of matrix
print(ans)

###########################Problem 4#####################################
# Problem 4: Convert the given vector into a data frame using an 
#appropriate function then convert the same into a matrix.
# a<-  c(1,2,3) ; b<- (10,20,30) ; c<- (100,200,300); d <- (1000,2000,3000)

m<- c(1,2,3) 
n<- c(10,20,30) 
p<- c(100,200,300)
q<- c(1000,2000,3000)
df <- data.frame(m,n,p,q)#converting vectors into DF
class(df)#class is dataframe
mat3 <- data.matrix(df)#converting df into matrix
class(mat3)
print(mat3)

#######################Problem 5##########################################
# Problem 5: Given is the information of creating a data frame.
#What would be the resultant of doing "C.df%*%B"
# > C.df <- data.frame(a,b,c,d)
# > C.df
# a  b   c    d
# 1 1 10 100 1000
# 2 2 20 200 2000
# 3 3 30 300 3000 
# > 'Given is the output of B:' 
# B
# [,1] [,2] [,3]
# a    1    2    3
# b   10   20   30
# c  100  200  300

C.df <- data.frame(m,n,p,q) #creating a data frame using variables from Problem 4
#creating a matrix as given in question
B <- matrix(c(1,2,3,10,20,30,100,200,300), nrow = 3, ncol = 3,byrow = TRUE)
rownames(B) <- c('a','b','c')
C.df%*%B#output of this statement is :
# Error in C.df %*% B : requires numeric/complex matrix/vector arguments


