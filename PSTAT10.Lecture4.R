# Showing the summary of the data set
x <- c(1,2,3,4,5)
summary(x) # Returns the maximum, Q1, Q2, mean, Q3 and minimum

# A box plot is a graphical representation of summary()
# A box plot can be created in r

options(scipen = 999) # Turns off scientific notation
boxplot(state.area) # A box plot for state area will be shown

# Syntax can be used to improve the boxplot
boxplot(state.area, col = "Yellow", border = "Blue", 
        main = "Boxplot of state area", horizontal = TRUE)

# For boxplots with grouped data
# Use ~ to separate the dependent variable on the left to the independent
boxplot(mpg~cyl, data = mtcars,
        main = toupper("Compare veichle weight to the number of cylinders"),
        xlab = "Number of cylinders", ylab = "Weight", col = "Pink")
# For syntax:
# data is the relevant data being used
# main is the header with toupper() used to make the string uppercase
# xlab and ylab are the labels
# col is the color

dogs <- c(1,4,6,10)
breed_name <- c("Alsatian", "Collie", "Pug", "Beagle")
# Creating a bar graph
barplot(dogs, names.arg = breed_name, xlab = "Breed",
        ylab = "Number of Dogs", col = "GREEN",
        main = "Dog chart", border = "Black")
# For syntax:
# The first part is a vector or matrix containing points to be graphed
# The second part is the labels that are being compared(names.arg =)
# The rest change the visuals of the graph

x <- c(4,5,6,1,4)
labels <- c("Comedy", "Action", "Romance", "Drama", "SciFi")
# Creating a pie chart
pie(x, labels, radius = 1, main = "Movies",
    col = rainbow(length(x)), clockwise = FALSE)
# For syntax:
# x is a vector containing numeric values for the chart
# labels is the description for the slices
# radius is the radius of the circle
# col is the color palette with length x

# Creating a matrix(elements in the matrix must all be the same type)
y <- matrix(1:20, nrow = 5, ncol = 4, byrow = FALSE)
# For syntax:
# First argument is the vector that becomes the elements in the matrix
# Second argument is the number of rows
# Third argument is the number of columns
# Fourth argument decides if the vector is arranged by rows(TRUE) or columns(FALSE)
# A fifth argument called dimnames labels the rows and columns
# Using list(row_name, column_name) will add a label

# Slicing the matrix using index
y[,3] # Comma then number returns the column. In this case column 3.
y[3,] # Number then comman returns the row. In this case row 3.
y[1,3] # Returns the element in the first row and third column
y[2:4, 1:3] # Returns the elements in row 2,3,4 and column 1,2,3

# Finding the dimension of a matrix
dim(y) # Returns row then column

# Checking if a value is a matrix
is.matrix(y) # Returns boolean values

# Adding sums of each row and column onto the matrix
y <- addmargins(y) # The new object will still be considered a matrix

a <- c(1,2,4,5,6)
b <- c(3,2,4,1,9)
d <- c(7,5,5,6,4)
# Other ways to create matrix
c1 <- cbind(a,b,d) # Creates a matrix arranging the vector arguments in columns
c2 <- rbind(a,b,d) # Creates a matrix arranging the vector arguments in rows

# Removing rows or columns from a matrix
c1 <- subset(c1, select = -a) # Removes column a
c2 <- subset(c1, select = -a) # Removes row a
# select asks for what is being shown in the modified matrix
# Using '-' before a label keep everything but the -label in the new matrix

# Overwriting matrix elements
c1[1,] = 1:2 # Replaces the indexed elements with new values

v1 <- c(5, 9, 3)
v2 <- c(10, 11, 12, 13, 14, 15)
# Creating an array
result <- array(c(v1, v2), dim = c(3, 3, 2))
# For syntax:
# First argument is the vector data to fill in the array
# Second argument is the dimensions of the array. In this case two 3x3 matrix
# A Third argument exist that labels each dimension of array

aaa <- c(2, 3, 4, 6)
bbb <- c(5, 6, 10, 12, 45)
# Calculations using arrays
new.array <- array(c(aaa, bbb), dim = c(3,3,2))
result <- apply(new.array, 1, sum) # Returns the sum of the collection of each row
# For syntax:
# First argument is the array being calculated
# Second argument is where the function will be applied
# 1 = row, 2 = column, c(1,2) indicates rows and columns
# Third argument is the function of calculation




