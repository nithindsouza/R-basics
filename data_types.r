########################Problem 1##########################################
# Problem 1: Use R  to compute the following values.
# (a)	27(38-17)
# (b)	(147¬) * (39) 
# (c)	  
# (d)	54%3
# (e)	54/3
# (f)	Find cube of 999


a <- 27*(38-17)
print(a)

b <- (14**7)*39
print(b)

c <- sqrt(436/12)
print(c)

e <- 54%%3
print(e)

f <- 54/3
print(f)

g <- 999**3
print(g)

###########################Problem 2######################################
# Construct 2 lists containing mentioned data types  (Numeric, Character, Complex, Logical, Vector) and do the following.
# a.	Create another list which has a vector as an input inside it.
# b.	Find the length and class of the above created list.

lst1 = list(12 , "hello world", 2+3i, 2<3, c(15.5 , 12.7))
lst2 = list(list(c(15,16,17,18),"program",18L),4+5i, TRUE)
lst3 = list(c(1,2,3,4))

length(lst1)
length(lst2)
length(lst3)

class(lst1)
class(lst2)
class(lst3)

############################Probelm 3####################################
# Create a list of two vectors containing integers (numbers from 1 to 10 in one and 5 to 15 in other) 
# .	Index the 8th element of the first list and 8th element of second list
# .	Unlist the second back to atomic vectors
# .	Subset the new list from 6th element to 14th element

lst4 <- list(c(1L:10L),c(5L:15L))

lst4[[1]][8]    #indexing 8th element
lst4[[2]][8]

ul4 = unlist(lst4[[2]])
class(ul4)

lst5 = list(lst4[[1]][6:10],lst4[[2]][1:4]) #creating new list from index 6-14
print(lst5)
################################Probelm 4#################################################
# Create a list of 5 states having state name as variable name and number of covid-19 cases as its values.
# A.	Access a few values through its variable name use $ to do so.
# B.	Find the class and length of the list
# C.	Subset the third state and its value.

lst6 = list(karnataka = 1000L , kerala = 2000L , tamilnadu = 3000L , AndraPradesh = 500L , delhi = 4000L)

lst6$karnataka    #accessing few values using $
lst6$kerala
lst6$AndraPradesh

class(lst6)     #finding class and length of list
length(lst6)

lst6[3]       #subseting third state and its value
############################################################################