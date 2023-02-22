# 1
# Probability of returning 8 or less in a uniformly distributed function
punif(8, 4, 10)
# Returned 0.6666667

# 2
# Probability of 3 or more subjects being color blind
pbinom(2, 9, 0.08, lower.tail = FALSE)
# Returned 0.02979319

# 3a
# Finding the probability of choosing a number between 61 and 94
pnorm(94, 83, 11) - pnorm(61, 83, 11)
# Returned 0.8185946

# 3b
# Finding the probability of choosing a number below 74
pnorm(74, 83, 11)
# Returned 0.2066267

# 3c
# Finding the probability of choosing a number above 101
pnorm(101, 83, 11, lower.tail = FALSE)
# Returned 0.05088175

# 4
# Finding the probability of the treatment costing less than 1000
pnorm(1100, 775, 150)
# Returned 0.9848699

# 5
# Simulating rolling a six-sided dice 100 times and storing the results
set.seed(2)
table(sample(1:6, 100, replace = TRUE))
# 6 occured 21 times in the simulation

# 6a
# Exporting the csv file
df = read.csv('HW5_Q6.csv')
View(df)
# Saving the csv file
save(df, file = 'HW5_Q6')

# 6b
# Producing a histogram of heights
hist(df$height, col = 'Blue', border = 'Black', xlab = 'Centimeter(cm)',
     ylab = 'Students', main = 'Number of Students for each Height')

# 6c
# Checking heights for normality
qqnorm(df$height)
qqline(df$height)
# The heights are almost the exact same as the normality line.
# Just that the farther points move away from the line.

# 7a
# Finding a such that P(Z<a) = 0.83
qnorm(0.83, 0, 1)
# Returned 0.9541653

# 7b Finding b such that P(Z>b) = 0.0064
qnorm(0.0064, 0, 1, lower.tail = FALSE)
# Returned 2.489286

# 8a
# Finding the percentage of men that must duck under doors with a height of 
# 72 in.
pnorm(72, 69, 2.8, lower.tail = FALSE)
# Returned 0.1419884

# 8b
# Finding the percentage of women that msut duck under doors with a height of
# 72 in.
pnorm(72, 63.6, 2.5, lower.tail = FALSE)
# Returned 0.0003897124

# 8c
# Finding the door height that allows at least 95% of men to walk under
# without ducking
qnorm(0.95, 69, 2.8)
# Returned 73.60559

# 9a
# It is a random variable with a binomial distribution because there is a fixed
# number of trials(20) with only two outcomes(correct or incorrect) and also has a 
# fixed possibility(0.25) each trial

# 9b
# It is not a random variable with a binomial distribution because
# the probability is not fixed since the experiment is with no replacement

# 9c
# It is not a random variable with a binomial distribution because the 
# number of trials is not fixed

# 9d
# It is a random variable with a binomial distribution because there is a fixed
# number of trials(30) with only two outcomes(heads or tails) and also has a 
# fixed possibility(0.5) each trial

# 9e
# It is a random variable with a binomial distribution because there is a fixed
# number of trials(50) with only two outcomes(prime or no prime) and also has a 
# fixed possibility(0.5) each trial

# 10
# Finding the probability that a child takes more than 2 minutes to eat a 
# donut given that 1.5 minutes has already passed
punif(2, 0.5, 4, lower.tail = FALSE)/punif(1.5, 0.5, 4, lower.tail = FALSE)
# Returned 0.8