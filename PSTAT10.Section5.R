# 1
x <- c(3,7,7,8,9,10,1) # Creating a vector from the given numbers
which(x > 7) 
# Comparing to see what index in x has a number greater than 7 which is 4,5,6

# 2
y <- c("PSTAT 10 , PSTAT 5LS, PSTAT 120B") 
# Creating a string from the given text
sub('B', 'A', y) # Replacing 'B' in the string with 'A'

# 3
toupper(month.name[6:8]) 
# Returning the names of the sixth, seventh, and eighth month in uppercase

# 4a
z <- c('B', 'B', 'D', 'E') # Creating a vector with the given elements

# 4b
z <- factor(z) # Changing the vector into a factor

# 4c
levels(z) # Returns the levels of the factor which is 'B', 'D', 'E'

# 4d
levels(z)[1] <- 'A' # Changes the first level of the factor to 'A'
levels(z) # Shows that the levels are 'A', 'D', 'E'

# 5
gas <- c(46, 33, 39, 37, 46, 30, 48, 32, 49, 35, 30, 48) 
# Creating a vector with the given numbers

# 5a
(length(which(gas > 40)) / length(gas)) * 100 
# Find the percentage of months that the gas bill was more than $40
# Return 41.667%

# 5b
gas <- gas > 40 
# Modifying the vector to be boolean values relative to the statement

# Changing the booleans to string
gas <- sub(TRUE, 'YES', gas)
gas <- sub(FALSE, 'NO', gas)

# Creating a table
table(gas) # Return a table with 7 No and 5 Yes
