# 1. Create a vector x containing the elements 5, 7, 3, 10, 1, 7, 19, 5, 2
x <- c(5, 7, 3, 10, 1, 7, 19 ,5, 2) 
# x is now a vector containing the given numbers

# extract the 4th element of x
x[4] 
# the code outputs the 4th element of x or 10

# extract the 5th, 6th and 7th elements of x
x[5:7]
# the code outputs the 5-7 elements of x or 1, 7, 19

# find the median of x
median(x)
# the code outputs the median of x or 5

# determine the length of x
length(x)
# the code outputs the length of x or 9

# 2. Using rep() function, create the following vectors
# 6666666
rep(6, 6) # repeats '6' six times
# 333444666
rep(c(3,4,6), each = 3) # repeats each value of the vector three times

# 3. Given 
p <- c(2,3,4,6,6)
q <- c(7,2,4,3,2)
# Explain the difference in the results of p+q and sum(p+q)
p+q # adds the vectors together to create a new vector
sum(p+q)# does p+q then adds each value of the new vector together

# 4. Rewrite the following code using the colon operator
y <- c(-50, -51, -52, -53, -54, -53, -52, -51, -50)
# can be rewritten as
y <- c(-50:-54, -53:-50)
# combines the vector going from (-50)-(-54) with (-53)-(-50)

# 5. Use the replicate function rep() to generate the following sequence
# 11223
rep(1:3, each = 2, length.out = 5) 
# repeats each value of the vector twice and goes only up to the fifth number

