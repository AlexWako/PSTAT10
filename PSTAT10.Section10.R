# 1a
dunif(0:6, 1, 5) # Returns the pdf of 0 through 6
# Returned 0.00 0.25 0.25 0.25 0.25 0.25 0.00

# 1b
# Finding the probability of choosing a number between 2.0 and 3.5
punif(3.5, 1, 5) - punif(2, 1, 5)
# Returned 0.375

# 2a
# Finding the probability of choosing a number between 65 and 95
pnorm(95, 80, 12) - pnorm(65, 80, 12)
# Returned 0.7887005

# 2b
# Finding the probability of choosing a number less than 74
pnorm(74, 80, 12)
# Returned 0.3085375

# 3a
# Finding the percentage of the population in between 84 and 116
(pnorm(116, 100, 16) - pnorm(84, 100, 16)) * 100
# Returned 68.26895%

# 3b
# Finding the IQ needed to be part of MENSA
qnorm(.98, 100, 16)
# Returned an IQ of 132.86

# 4a
# Generating the five winning numbers that is reproducible
set.seed(1)
sample(1:100, 5)

# 4b
# Generating a new set of five winning numbers
set.seed(2)
sample(1:100, 5)

# 5a
# Generating 100 random normal variate
variate <- rnorm(100, 75, 10)

# 5b
# Finding the number of normal variate within +- 2 standard deviation from 
# the mean
mean <- 75
standard_deviation <- 10
z_score = (variate - mean)/standard_deviation
sum(abs(z_score) <= 2)
# Returned 95

# 6a
# Finding the probability that page 427 has 0 errors
dbinom(0, 750, 1/500)
# Returns 0.2227953

# 6b
# Finding the probability that page 427 has 4 errors  
dbinom(4, 750, 1/500)
# Returns 0.04699567
