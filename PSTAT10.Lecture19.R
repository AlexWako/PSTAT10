# Review for the Final

# Loading in a downloaded CSV file
df <- read.csv('Data/titanic.csv') # File path from working directory
getwd() # Returns the working directory of my files
is.data.frame(df) # Checks if the opened file is a dataframe

# To see the contents of the data frame
View(df)

# To see the first six rows of the data frame
head(df) # Adding an argument of n = x will show the first x rows

# To see the bottom six rows of the data frame
tail(df) # Adding an argument of n = x will show the last x rows

# To see all the column(variables) names
names(df)

# To show the type of each column(variable)
str(df)

# Summary statistics for the columns in the dataframe
summary(df)

# Summary statistics for a specific column in the dataframe
summary(df$Fare)

# Creating a tibble dataframe will minimize the dataframe to the first 10 rows
as_tibble(df)

# Showing how many people survived
counts <- table(df$Survived)
# Creates a table that splits the data into survived = 1 or did not survive = 1

# To visualize the situation
barplot(counts, main = 'Survivors', xlab = 'Number of Survivors')
# Creates a barplot using the counts table

# Shows the proportions of the table in a specific value
prop.table(counts)

# Creating a table taht splits the data into survived and did not survive in
# addition to male or female
counts2 <- table(df$Survived, df$Sex)

# Creating a stacked barplot to represent the table
barplot(counts2, main = 'Survivors', xlab = 'Sex', ylab = 'Number of Passengers',
        names.arg = c('Female', 'Male'))

# Since the barplot is difficult to interpret with no legend
# a legend must be added
barplot(counts2, main = 'Survivors', xlab = 'Sex', ylab = 'Number of Passengers',
        names.arg = c('Female', 'Male'), legend = rownames(counts))

# Adding colors to better contrast the data
barplot(counts2, main = 'Survivors', xlab = 'Sex', ylab = 'Number of Passengers',
        names.arg = c('Female', 'Male'), legend = rownames(counts),
        col = c('red', 'blue'))

# Renaming the legend values
rownames2 <- c('Did not survive', 'Survived')

barplot(counts2, main = 'Survivors', xlab = 'Sex', ylab = 'Number of Passengers',
        names.arg = c('Female', 'Male'), legend = rownames2,
        col = c('red', 'blue'))

data('airquality') # Loading in a dataframe from R
as_tibble(airquality) # Making a dataframe into a tibble (Must load tibble package)

mean(airquality$Temp) # Finding the mean temperature in airquality
median(airquality$Temp) # Finding the median termperature in airquality
quantile(airquality$Temp) # Finding the quantile of the temperatures in airquality
 
summary(airquality) # Shows a summary of all the columns in the dataframe

# We can continuously use a dataset in R using attach()
attach(airquality)
# This way we do not have to write out airquality$column 
mean(Temp)
# We can remove it from attach() using detach()
detach()

# We can apply functions to all columns using apply()
apply(airquality, 2, mean)
# Applies mean() to all columns
# Using 1 instead of applies to all rows
# Ozone and Solar.R does not return a value because some values in the column
# are NA

# To work around missing values
apply(airquality, 2, mean, na.rm = TRUE)
# Applies mean() to all columns except NA values

# Summarizing a column can return important information such as the number of missing values
summary(airquality$Ozone)

# Creating a histogram of the temperature 
hist(airquality$Temp, breaks = 'Sturges', main = 'Airquality: temperature', col = 'yellow')
# Creates a yellow histogram using the temperature column from airquality and splits the values
# by 'Sturges'

# To have two or more graphs on the plot we can use par()
par(mfrow = c(2, 2)) # Adds each graph in by rows
# Creates a 2x2 matrix that the graphs are put into

# Add the two histograms into the matrix
hist(airquality$Ozone)
hist(airquality$Temp, breaks = 'Sturges', main = 'Airquality: temperature', col = 'yellow')

par(mfcol = c(2,2)) # Adds each graph in by columns

# Add the two histograms into the matrix
hist(airquality$Ozone)
hist(airquality$Temp, breaks = 'Sturges', main = 'Airquality: temperature', col = 'yellow')

# Checking if a graph is normally distributed
qqnorm(airquality$Temp)
qqline(airquality$Temp) # Creates a linear line to see how close to normal distribution the graph is

# Creating a boxplot to show the summarized data
boxplot(airquality$Ozone)

# We can group a data together using ~
boxplot(airquality$Temp ~ airquality$Month)
# Shows the summarized data of temp in each month

# Applying a function to a column that is grouped
tapply(airquality$Temp, airquality$Month, mean)
# Shows the mean of temp in each month


