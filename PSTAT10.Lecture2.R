# Creating Vectors
a <- c(1,2,3,4,5) # All arguments must be the same data type

# Determining the type of data
typeof(a)
# Can result in logical, numeric, or character
# Numeric can be integer or double(number with a decimal)

# Determining the length of the data
length(a) # Answers the number of elements

# Determining the mean
mean(a)

# Determining the median
median(a)

# Suppose you keep track of your mileage each time you fill up.
# At your last 3 fill-ups your mileage was: 65311, 65624, 65908
# How many miles did you drive between each fill up?

Mileage <- c(65311,65624,65908)
diff(Mileage) # diff() tells the difference between each value

# Combine MILEAGE and MILEAGE2 into a vector named MILEAGE3
# How many miles were covered between each fill up?

Mileage2 <- c(66200,66533,66856)
Mileage3 <- c(Mileage, Mileage2) # c() can also combine two vectors
diff(Mileage3)

# Example of coercion
x <- c("a", 2, 3.5, "b", 5, "c")
typeof(x) # x changed to contain only characters to represent all the arguments

# Vectors can also be created through the colon operator ':'
# Constructing a vector containing the numbers 1-10
y <- 1:10
is.vector(y) # Determines if 'y' is a vector

# Vectors can also be created through seq()
# Syntax can be large as seq(from, to, by =, length =)
sequence <- seq(1, 10, by = 2) 
# Creates a vector containing only odd numbers til 10
sequence2 <- seq(1, 10, length = 5) 
# Creates a vector that divided the sequence into 5 equal intervals

# Vectors can also be created through rep()
rep(1:4, 2) # Repeats 1-4 twice
rep(1:4, each = 2) # Each number is repeated twice in the same sequence
rep(1:4, each = 2, length = 4)
# Each number is repeated twice in the same sequence
# But the vector stops after the fourth element

# Data can be sorted
sort(a, decreasing = TRUE) 
# Changing the logical value of 'decreasing' outputs a vector in different order
sort(a)
# Vectors are increasing by default so the second argument is not necessary

# Accessing element in a vector
a[1] # Gives the first element in the vector
a[-2] # Gives every element except the second 
a[2:4] # Gives every element in the sequence

# Accessing the global environment(top right)
objects() # Returns the list of values in the global environment
rm(x,y,z) # Removes values from the global environment
# Broom symbol on the top right removes every value
