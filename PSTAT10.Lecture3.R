data('state') # Loads the state data set(specifically state)

rm(state.center)
rm(state.division)
rm(state.region)
rm(state.x77)
# Removes data from the data set

is.vector(state.area)

# Show all the data in a clean format
View(state.area) # V is case-sensetive

# Show a histogram(summary graph for a single variable)
hist(state.area)

# Syntax can be used to create a better histogram
hist(state.area, breaks = "Sturges", col = "Yellow", 
     xlab = "State Area (sq. miles)",
     main = paste("Histogram of State Areas"))

options(scipen = 999) # Turns off scientific notation
options(scipen = 0) # Turns on scientific notation

max() # Finds maximum value
min() # Find minimum value
mean() # Finds mean
median() # Finds median

# Mode is not in base R packages
install.package("statip")
library(statip)
mfv() # Finds the most frequent value(mode)

range() # Finds the range 
quantile() # Finds the quartiles(50% = The medium)
IQR() # Finds the interquartile range(Q3 - Q1)
sd() # Finds the standard deviation
var() # Finds the variance