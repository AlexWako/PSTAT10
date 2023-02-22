# 1a
x <- c(5:20) # Create a vector with elements 5-20

# 1bi
set.seed(1) # Making the sample reproducible
sample(x, 5, replace = TRUE)
# A reproducible sample of 5 integers that has repeated values

# 1bii
sample(x, 5, replace = FALSE)
# A reproducible sample of 5 integers that does not have repeated values

# 2a
probability <- c(0.0, NA, 0.4, 0.1, 0.03) 
# Creating a vector from the given probability
a <- sum(probability, na.rm = TRUE) # The sum of the vector without NA
b <- 1 - a # Returns the value for NA which is 0.47
probability <- c(0.0, b, 0.4, 0.1, 0.03) # Adding the found NA value in

# 2b
cumsum(probability)[3] # The probability of X being less than 4 which is 0.87

# 2C
mean <- sum(outcomes * probability) 
# Returns the mean of the random variable X which is 2.69

# 2D
cdf <- cumsum(probability) # Creating the cumulative distribution function of X
barplot(cdf, names.arg = outcomes) # Plotted cdf
