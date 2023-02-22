# Calculating Binomial Probability
# Lets say we want to get the probability of flipping heads twice in a row

dbinom(x = 2, size = 2, prob = 0.5)
# x is the value of the random variable
# size is the number of trials
# prob is the probability vector of the random variable

# Returns 0.25 or 25% chance

# Constructing a probability mass function off binomial
# Lets say we want to get the probability of flipping tails 0-3 times

pmf_tails <- dbinom(x = c(0:3), size = 3, prob = 0.5)
pmf_tails

# Lets say we want to find the probability of flipping heads 4 or less times
# with 10 trials

# First method
sum(dbinom(0:4, size = 10, prob = 0.5))

# Second method
pbinom(q = 4, size = 10, prob = 0.5)
# q is the number of success or fewer
# size and prob is the same as dbinom

