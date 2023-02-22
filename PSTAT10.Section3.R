# 1
data(CO2) # Loading in the CO2 dataset

head(CO2) # Show the first 6 rows of the data set

hist(CO2$uptake, col = "Blue", xlab = "CO2 Uptake", 
     main = paste("Histogram of CO2 Uptake Rates in Grass Plants"))
# Creates a histogram for the uptake variable with adjustments
# The histogram shown is a Biomodal Histogram

# 2
?stem() # a) Search up the stem() function

x <- c(9,9,22,32,33,39,39,42,49,52,58,70) 
# Create a vector with the given sequence

stem(x) # b) Create a stemplot with the vector

stem(x, scale = 2) 
# c and d) Create a stemplot that matches the example in the worksheet

# e) Stem plots perserve data because stemplots show the exact data for each
# point just by looking at one.
# Histograms on the other hand is more generalized and does not tell the exact
# data for each point.

# 3
min(state.area) # a) The area of the smallest state is 1214 sq. mile
max(state.area) # b) The area of the largest state is 589757 sq. mile
mean(state.area) # c) The mean of the states is 72367.98 sq. mile
median(state.area) # d) The median of the state is 56222 sq. mile
diff(range(state.area)) 
# e) The difference of the max and min of the data is 588543 sq. mile

# 4
v <- c(2,3,3,3,4,2,5,10) # Create a vector with the given numbers

install.packages("statip") # Install and load statip to use the mfv() function
library(statip)

mfv(v) # The mode of the vector is 3
