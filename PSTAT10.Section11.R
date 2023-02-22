# 1
# A for loop that iterates from 1-7
x <- 1:7 # The interval that is being looped
for (i in x)
{
  print(i^3)
}
# Returns the cube of each number

# 2
# Initial terms
target <- 100000
product <- 1
count <- 0

# A while loop that iterates as long as product <= target
while(product <= target)
{
  count <- count + 1
  product <- product * count
}
print(count) 
# Prints the number of terms that is required for the product > target which
# is 9

# 3
x <- 0 # Initial term

# A repeat loop that iterates until x is equal to 5
repeat{
  print('PSTAT 10')
  x <- x + 1
  if(x==5)
    break
}
# Prints the string 5 times

# 4
i <- 1 # Initial term

# A while loop that runs while i is less than 6
while(i<= 5){
  if(i==3){
    i <- i +1
    next
  }
  print(i)
  i <- i + 1
}
# Prints i until i = 3, skips printing i = 3,
# and then continues until i = 5

# 5
# Creates a function cubed that takes in an argument and returns the cube 
# of that number
cubed <- function(num){
  return(num^3)
}

# Example cube of 6 will return 216
cubed(6)
# Returned 216

# 6
# Creates a function that simulate rolling two six-sided dice and 
# returning the sum of the two rolls
sum_of_roll <- function(){
  return(sum(sample(1:6, 2, replace = TRUE, 
                    prob = c(1/6, 1/6, 1/6, 1/6, 1/6, 1/6))))
}

# Example simulating the event 5 times
z <- 1:5
for(i in z){
 print(sum_of_roll())
}
# Returned 4, 5, 6, 10, 7

