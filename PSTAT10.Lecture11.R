# Control structures used in R
# if, if else, ifelse - Testing a condition
# for - execute a loop for a fixed number of times
# while - execute a loop while the condition is true
# repeat - execute a loop until a condition is met
# break - stop the execution of a loop
# next - skip an iteration of a loop
# return- exit a function

# If statement
x <- 3
x == 2 # Checks if x is equal to two and returns a logical statement

# Example of a true conditional statement
if(x==3)
  print('This is True')
# Returns the string

# Example of a false conditional statement
if (x==2)
  print('This is True')
# Does not return the string

# %in% is a logical operator that determines if an element belongs to an object
x <- c('Hello')
if ('Hello' %in% x)
  print('Hello')

# Using the else statement for when the condition is false
if('Bye' %in% x)
  print('Bye') else print('Hello')
  
# ifelse statement returns values for both true and false 
x <- 1:10
ifelse(x < 5| x > 8, x, 0) # loops through the vector returning 0 when false and
# whatever x is when true
# The ifelse statemet takes in the condition for the first argument
# The second argument is what it returns when True
# The third argument is what it returns when False

# Repeat loop
x <- 1
repeat {
  print(x)
  x = x + 1
  if (x==4)
    break
}
# Repeats the code inside

# While loop
i <- 1
while (i<6) {
  print(i)
  i = i + 1
}
# Repeats the code inside while the statement is true
# Checks if the statement is true first

# %% is used to find the modulus
x <- 10
x %% 3 # Returns 1

# For loop
x <- c(6, 5, 3, 9, 8, 11, 6)
count <- 0
for (i in x)
{
  if(i%%2 == 0)
    count <- count + 1
}
print(count)
# Repeats the code inside for a fixed amount of time

# Creating a user function
fahrenheit_to_centigrade <- function(temp_F)
  {
  temp_C <- ((temp_F - 32) * (5/9))
  return(temp_C)
}

# Convrting 82 degree F to C
fahrenheit_to_centigrade(82)
