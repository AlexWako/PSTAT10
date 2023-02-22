# Finding the density of the uniform distribution
# Use dunif(x, min = , max = , log = FALSE)
# x is a vector
# If log = TRUE, probabilities will be returned as logical values

Bus_example <- dunif(x=0:10, min = 0, max = 10) 
# Probability of bus waiting time
Bus_example # Returns the probability of each waiting time
hist(Bus_example, freq = FALSE)

# Returning the distribution function
# Use punif(q, min = , max = , lower.tail = True, log.p = FALSE)
# q is vector
# If lower.tail = True, returns P(X<=x), otherwise, P(X>x)
# p.log is treated the same way as log from dunif()

# Finding the probability of less than 5 minutes of wait
punif(5, 0, 10, TRUE)

# Finding the probability of more than 5 minutes of wait
punif(6, 0, 10, FALSE)

# Plotting a normal distribution
x <- seq(-4, 4, length = 200)
y <- 1/sqrt(2*pi)*exp(-x^2/2)
z <- plot(x, y, type = "l", lwd = 2, col = 'red')

# Plotting a normal distribution using dnorm()
y <- dnorm(x, mean = 0, sd = 1)
z <- plot(x, y, type = "l", lwd = 2, col = 'blue')

# The standard deviation is the measure of spread
y2 <- dnorm(x, mean = 0, sd = 2)
lines(x, y2, type = "l", lwd = 2, col = 'black')

# Adding a legend to the graph
legend('topright', c('sigma = 1', 'sigma = 2'),
       lty=c(1,1,1), col = c('Blue', 'Black'))
# First syntax is the location
# Second syntax is the labels
# Third syntax is the line type. lwd can be used to specify line width
# Fourth syntax is the color of the lines

# Finding the area under the standard normal curve below mean
pnorm(0, 0, 1)

# Finding the area between x = -1 and x = 1
pnorm(1, 0, 1) - pnorm(-1, 0, 1)
# The 1 and -1 can be represented with any two points within the
# standard normal distribution curve

x <- seq(70, 130, length = 200)
y <- dnorm(x, 100, 10)
plot(x, y, type = 'l', lwd = 3, col = 'red')

x <- seq(70, 90)
y <- dnorm(x, 100, 10)
polygon(c(70,x,90), c(0,y,0), col = 'yellow')
# Creating a shaded area under the curve
# The polygon function creates a shape
# First two arguments are vectors that contain the coordinates
# Last argument is the color to fill the shape in

# Finds the area of the shaded area
pnorm(90, 100, 10)

# Creating a new shaded area inbetween 90 and 100
x <- seq(90, 100, length = 200)
y <- dnorm(x, 100, 10)
polygon(c(90, x, 100), c(0, y, 0), col = 'blue')

# Finding the area of the shaded area
pnorm(100, 100, 10) - pnorm(90, 100, 10)

# Finding the point that makes the area for the left of the point
# under the curve = q
qnorm(0.5, 0, 1)
# Returns 0 because at the mean, the area is 0.5

# The area under the curve at -1
pnorm(-1, 0, 1) # is equal to 0.1586553

# The point on the axis that makes the area = q
qnorm(0.1586553, 0, 1)
# Can't be 100% accurate because of decimal points but is equal to -0.99998

# Construct a histogram to check if the data is a normal distribution
hist(iris$Sepal.Width)

# Creating a QQ plot to see if the data is a normal distribution
qqnorm(iris$Sepal.Width)
# If the plot is close to a straight line, we can conclude it is a normal
# distribution

# To find if it is a straight line
qqline(iris$Sepal.Width)

# Generating samples from a standard normal distribution
rvariates <- rnorm(n=1000, mean=0, sd=1)
# First argument is the number of samples
# Second and third are mean and standard deviation respectively

# Checking if the sample is a normal distribution
hist(rvariates)
qqnorm(rvariates)
qqline(rvariates)
