#1a
deaths <- c(738, 538, 158, 103, 93, 682) # The number of deaths as a vector
causes <- c('Heart Disease', 'Cancer', 'Stroke', 'Pulmonary Disease',
            'Accidents', 'Others') # The causes of death as a vector
pie(deaths, causes, radius = 1, 
    main = toupper("Deaths in 1995 and the cause of death"),
    col = rainbow(length(x)), clockwise = FALSE) 
# Creating a rainbow pie chart displaying the data from the two vectors

#1b
# The chart visually tells what the biggest causes of deaths were but it does
# not tell the scale of death because it does not show the number of deaths for
# each cause. Therefore it is not a good way to show the data.

#2a
m <- matrix(1:12, nrow = 4, ncol = 3) 
# Creating a 4x3 matrix with the numbers 1-12 that fills it up by columns

#2b
row_name = list('a', 'b', 'c', 'd') # Creating a list for row names
column_name = list('x', 'y', 'z') # Creating a list for column names
m <- matrix(1:12, nrow = 4, ncol = 3, dimnames = list(row_name, column_name))
# Remaking matrix m with labels for the row and column

#2c
m[,1] # Returns the elements in column one

#2d
m[3,1] # Returns the element in row 3 column 1

#3a
a <- c(1,2,3) # The given vector for a
b <- c(6,7,8) # The given vector for b

c <- cbind(a,b) 
# Creating a matrix from the vectors a and b that matches the given matrix 
# without using matrix()

#3b
is.matrix(c) # Checks if c is a matrix which returns TRUE

