# 1
dbinom(5, 8, prob = 0.2) # Creates a binomial distribution of the question
# Returned 0.009175

# Using rbinom() instead of sample() will produce random data in relation
# to the binomial distribution.

# 2
set.seed(1)
x <- rbinom(7, 200, 0.03) # Returned 4 5 6 9 4 9 10
sum(x) # Returned 47

# 3
set.seed(2)
y <- rbinom(1:6, 5, 1/6) # Returned 0 1 1 0 2 2
which(y == 3) # Returned 0

# Using plot() with dbinom() as the y-axis will plot the pmf of the 
# binomial distribution.
# Using mfcol() or mfrow() = to c(dimension) will create a matrix for
# the plot arranging by column or rows respectively.

# 4a
plot(0:25, dbinom(0:25, 25, 0.4), type = 'h') # Plotting the given problem
# From the graph, there is about a 4.5% chance to have 6 success

# 4b
dbinom(0:25, 25, 0.4) # Returns the probability for each number of success

# 5a
plot(0:10, dbinom(0:10, 10, 0.4), type = 'h')
# From the graph, there is around a 22% chance to have 3 success

# 5b
plot(0:20, dbinom(0:20, 20, 0.4), type = 'h')
# From the graph, there is around a 7.5% chance to have 5 success

# 5c
par(mfcol = c(1, 2)) # Creating a side by side plot
plot(0:10, dbinom(0:10, 10, 0.4), type = 'h') # Plot from 5a
plot(0:20, dbinom(0:20, 20, 0.4), type = 'h') # Plot from 5b

# 6
# The set seed function is used to store the results of a random probability
# in a number.