# 8a)
dice_outcomes <- c(0, 1, 2) # All the outcomes of rolling a six with two dice
probability_dice <- c(25/36, 11/36, 1/36) 
# Different probability of rolling a six in two rolls

dice_cdf <- cumsum(probability_dice) 
# Creating a cdf for the probability of rolling a six with two dice

barplot(dice_cdf, names.arg = dice_outcomes, ylab = 'Probability',
        main = "Cumulative Distribution Function of Rolling a Six
        with Two Dice") 
# Creating a barplot for the created cdf

# 8b) 
coin_outcomes <- c(0, 1, 2, 3) 
# All the outcomes of flipping heads with three coins
probability_coin <- c(1/8, 3/8, 3/8, 1/8)
# Different probability of flipping heads with three coins

coin_cdf <- cumsum(probability_coin)
# Creating a cdf for the probability of flipping heads with three coins

barplot(coin_cdf, names.arg = coin_outcomes, ylab = 'Probability',
        main = 'Cumulative Distribution Function of Flipping Heads
        with Three Coins')

# 9)
probability <- c(1/8, 1/8, 1/8, 1/8, 1/8, 1/8, 1/8, 1/8)
# Probabilities of rolling a 8 sided dice

sample(1:8, 20, replace = TRUE, prob = probability)
# Simulation of 20 rolls of a 8 sided dice
# Returned 1 1 3 2 5 7 7 1 3 5 5 4 3 4 7 3 7 8 2 4

# 10)
sample(mtcars$mpg, 5, replace = TRUE)
# Sampleling 5 mpg values from the mtcars data
# Returned  17.8 22.8 22.8 30.4 17.3

# 11)
print(mtcars[sample(1:32, 6),])
# Print 6 random rows from mtcars

# 12)
bag <- c(rep('red', 3), rep('blue', 3), rep('green', 4)) 
# A vector representing the inside of the bag

sample(bag, 2, replace = FALSE)
# Simulation of drawing 2 balls from the bag without replacement
# Returns two color
