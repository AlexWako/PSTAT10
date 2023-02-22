a <- c(2, 3, 4, 6) # Numeric vector
b <- c('red', 'white', 'red', 'green') # Character vector
c <- c(TRUE, TRUE, TRUE, FALSE) # Boolean vector

# Creating a dataframe
df <- data.frame(a,b,c) 
# Data frames must have the same number of elements for each vector

df_row <- c('one', 'two', 'three', 'four')
# Labeling rows in a dataframe
df <- data.frame(a, b, c, row.names= df_row)

# Slicing a dataframe
df2 <- df[c('a', 'c')] # Returns a dataframe with coumn a and c

df3 <- df[c('b')] 
# Since column b is filled with characters, 
# the program will convert it to a factor

# Working with a dataset
data('iris') # Loading the data
View(iris) # Looking at the dataframe
is.data.frame(iris) # Checking if 'iris' is a dataframe
dim(iris) # Shows the dimensions of the dataframe in a row x column format
ls(iris) # Shows the names of the columns
names(iris) # Works the same way as ls
print(iris) # Works the same ways as View() but shown in console

head(iris) # Prints the first six rows of data
tail(iris) # Prints the last six rows of data
# Adding a n=x argument after the chosen data 
# will change the amount of rows shown for both head() and tail()

# Removing columns from dataframe
df <- subset(iris, select = -Petal.Width) 
# Returns the dataframe without Petal.Width
# Select chooses the columns being kept, but when a - is added in 
# front of the name, that column is instead being removed

# Using a vector = select would remove multiple columns
df <- subset(iris, select = -c(Petal.Length, Species))

# Removing multiple columns in a sequence
df <- subset(iris, select = -c(Sepal.Width: Species))
# Takes every column between Sepal.Width and Species and removes them

# Working with only one column in a dataset
hist(iris$Petal.Length)
mean(iris$Petal.Length)
sd(iris$Petal.Length)
# Adding a $ after the dataframe and before the column name would 
# tell the program about what column is being worked on

a <- c(2, 3, 4, 6)
b <- c('red', 'white', 'red', NA) 
c <- c(TRUE, TRUE, FALSE, TRUE)

# Using a tibble
library(tibble) # Tibble has to be loaded in from the R packages

tb <- tibble(a, b, c) # Creating a tibble
# Tibbles that are printed show the dimension and the datatype of each column

FirstName <- c('Ann', 'Paul', 'Bob')
LastName <- c('Smith', 'Liu', 'Lopez')
Department <- c('Math', 'Physics', 'Biology')

Faculty_Profile <- cbind(FirstName, LastName, Department)
# Combines the vectors by columns and returns a matrix

New_Faculty_Profile <- data.frame(FirstName = c('John', 'Sara', 'Jane'),
                                  LastName = c('Day', 'Brown', 'Green'),
                                  Department = c('History', 'English', 'PSTAT'))

# Combine the matrix and dataframe by rows to create a new dataframe
All_Faculty_Profile <- rbind(New_Faculty_Profile, Faculty_Profile)

# Coercing to a tibble
as_tibble(All_Faculty_Profile) # Returns a tibble created from the dataframe

# Exporting the tibble to a working directory(for future use)
write.csv(All_Faculty_Profile, 'All_Faculty_Profile.csv')
# The first argument is the dataframe/tibble
# The second argument is the name 

# Importing the csv
read.csv('All_Faculty_Profile.csv') 
# Returns the dataframe that was previously created

x <- c('PSTAT', 2, TRUE)
y <- c(5, NA, 8)
# Creating a dataframe with a missing value
df <- data.frame(x, y)

# Omitting a NA from a dataframe
na.omit(df)
# Removes any row with NA
