# 1a
x_power_of_n <- function(x, n)
  {
  answer <- c(x)
  for (i in 1:n)
    answer[i + 1] <- x^i # Adds the items in to the vector by indexing
  return(answer)
}

# 1b
x_power_of_n(2, 4)
# Returns 2  2  4  8 16
x_power_of_n(3, 10)
# Returns 3 3 9 27 81 243 729 2187 6561 19683 59049

# 2a
my_function <- function(a, b){
  c <- c(a,b)
  ifelse(is.numeric(c), return(a+b), 
         return('The arguments were not both numeric')) 
  # Returns the second argument if true and the third argument if false
}

# 2b
my_function(1, 2)
# Returns 3
my_function(1, 'HI')
# Returns "The arguments were not both numeric"

# 3
ifelse(faithful$eruptions < 3, print('Short'), print('Long'))
# Prints Short if less than 3 minutes and prints Long if more than 3 minutes

# 4
x <- c(16, 7, 4, 8, 3, 21)
for(i in x){
  if(x[5] == i)
    break
  print(i)
}
# A for loop that continues until the fifth term of the vector

# 5
x <- 'PSTAT'
i <- 1
repeat{
  print(x)
  i = i+1
  if(i > 6) # Repeat loop that repeats until i is incramented more than 6 times
    break
}

# 6
for(i in 13:17)
  if(i%%2 == 1)
     print(i^2)
# Prints the square of every odd number from 13-17

# 7
x <- matrix(c(1:6), nrow = 3, ncol = 2, byrow = FALSE)
for(y in 1:3)
  for(z in 1:2)
    if(y == z)
      print(x[y, z])
# Returns elements 1 and 5 from the 2 by 3 matrix

# 8a
x <- c(2, 5, 3, 9, 8, 11, 6)
count <- 0
for (i in x){
  if(i%%2 == 1)
    count <- count + 1
}
print(count)
# Prints the number of odd numbers in the vector

# 8b
# Combining the loops from 8a and the lecture to print the number of odd
# and even numbers in the vecotr
x <- c(2, 5, 3, 9, 8, 11, 6)
count_even <- 0
count_odd <- 0 
for (i in x){
  if(i%%2 == 0)
    count_even <- count_even + 1
  if(i%%2 == 1)
    count_odd <- count_odd + 1
}

# 8c
# Printing the results
print(count_even) # Returned 3
print(count_odd) # Returned 4

