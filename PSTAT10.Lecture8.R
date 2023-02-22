outcomes <- c(0:4)
probability <- c(0.07, 0.20, 0.38, 0.22, 0.13)

# Creating a cumulative probability distribution
Smalltown_cdf <- cumsum(probability)

probability2 <- c(0.07, 0.20, 0.38, NA, 0.13)
# If we had to find NA ...
x <- sum(probability2, na.rm = TRUE) 
# na.rm if equal to true, removes missing value in the calculation
1 - x # Returns the answer for NA

# Finding the mean of the distribution
Mean_Smalltown <- sum(outcomes * probability) 
# Creates a list multiplying corresponding index and adds them together

# Simulating probability
sample(0:4, 25, replace = TRUE, prob = probability)
# The syntax for sample()
# A vector of elements to choose from
# The number of items to choose
# Should the elements be replaced
# A vector of the probability of each outcome

Sample_Smalltown <- sample(0:4, 10000, replace = TRUE, prob = probability)
# Creating the pmf from a simulation
table(Sample_Smalltown)/10000
