# 1
x <- HairEyeColor

# a
View(x) # Shows the dataframe on a different window

# b
is.array(x) # Checks if HairEyeColor is an array
# Returns True

# ci
sum(x) # Adds all the frequency values together
# Returns 592

# cii
sum(x[1:17]) # Adds all the frequency values of male sex together
# Returns 315

# ciii
sum(x[c(5:8,21:24)]) # Adds all the frequency values of blue eyes together
# Returns 215

# civ
sum(x[c(19,23,27,31)]) 
# Adds all the frequency values of red haired females together
# Returns 37

# 2
y <- mtcars

# a
plot(y$mpg, y$drat)
# Plots mpg vs rear axle ratio
# Mpg is plotted on the x axis

# b
barplot(y$gear)
# Plots a barplot for the number of forward gears for each car

# c
summary(y) # Returns a summary of mtcars for all variables

# d
options(scipen = 999) # Turning off scientific notation
boxplot(y$mpg, main = "Boxplot for the mpg of cars", 
        col = "Green")
# Creates a boxplot using the information from the summary of mpg

# e
boxplot(y$mpg,y$gear, main = "Miles Per Gallon Versus Number of Forward Gear",
        names = c('MPG', 'Number of Forward Gear'), 
        ylab = "Miles and the Number of Gears",
        col = c('Green', 'Blue'))
# Creates a side by side boxplot comparing mpg to number of forward gear

# 3
?list

# a
y <- c(77, 44, 33, 'Hamilton', 'Bottas', 'Verstappen')
# Creating a vector y with the given objects

# b
z <- list(77, 44, 33, 'Hamilton', 'Bottas', 'Verstappen')
# Creating a list z with the given objects

typeof(y) # Finding the type of y which is character
typeof(z) # Finding the type of z which is list
# The types of the two objects are different even though 
# they have the same objects inside

# c
typeof(z[4]) # Checks the type for the fourth index of list z which is list
typeof(z[[4]]) 
# Checks the type for the fourth index of list z but with double brackets
# which is character

# d
a <- c(1,2,3) # Creating vector a
b <- c(4,5,6) # Creating vector b

c <- list(a, b) # Creating a list with vectors a and b
typeof(c) # Checking if c is a list which it is
# Creating a list with vectors is possible

d <- c(a,b) # Creating a vector with vectorss a and b
typeof(d) # Checking if d is a vector which it is not
# Creating a vector with vectors is not possible

a <- list(1,2,3) # Creating list a
b <- list(4,5,6) # Creating list b

c <- c(a,b) # Creating a vector with lists a and b
typeof(c) # Checking if c is a vector which it is not
# Creating a vector with lists is not possible

d <- list(a,b) # Creating a list with lists a and b
typeof(d) # Checking if d is a list which it is not
# Creating a list with lists is not possible

# 4
# a
a <- matrix(16:31, nrow = 4, ncol = 4, byrow = TRUE)
# Creating a 4x4 matrix with elements 16-31 arranged by rows

# b and c
column_names = c('C1', 'C2', 'C3', 'C4') # Creating a vector for column names
row_names = c('R1', 'R2', 'R3', 'R4') # Creating a vector for row names
a <- matrix(16:31, nrow = 4, ncol = 4, byrow = TRUE, 
       dimnames = list(row_names, column_names))
# Creating a labeled 4x4 matrix with elements 16-31 arranged by rows 

# d
a[2, 3] # Indexing to find the element of row 2, column 3 which is 22

# 5
a <- c(1:20) # Creating a vector containing elements from 1-20
b <- array(a, dim = c(3, 4, 2)) 
# Creating an array using a with two 3x4 matrix filled by columns

# a
row_names = c('R1','R2','R3') # Creating a vector of row names
column_names = c('C1', 'C2', 'C3', 'C4') # Creating a vector of column names
matrix_names = c('M1', 'M2') # Creating a vector of matrix names
dimnames(b) <- list(row_names, column_names, matrix_names)

# b
result <- apply(b, 2, sum) # Finding the sum of each column
# Returns 48, 66, 64, 42

#c
result <- apply(b, 3, mean) # Finding the mean of each matrix
# Returns 6.50 and 11.833
