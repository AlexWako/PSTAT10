# 1a)
Under55 <- matrix(c(8, 98, 5, 115),
                  nrow = 2, ncol = 2, byrow = FALSE)
# A matrix for the data of people under 55

Over55 <- matrix(c(22, 76, 16, 69),
                 nrow = 2, ncol = 2, byrow = FALSE)
# A matrix for the data of people over 55

AllData <- array(c(Under55, Over55), dim = c(2,2,2))
# An array containing the two matrices

# 1b)
AllData <- array(c(Under55, Over55), dim = c(2,2,2),dimnames = list(c('Deaths', 
                 'Survivor'), c('TOLB', 'Placebo'), 
                 c('Age<55', 'Age>=55')))
# Remade the array but with labels

# 1c)
outcomeT <- apply(AllData, 1, sum) 
# Returns the total amount of deaths and survivor which is 51 and 358
treatmentT <- apply(AllData, 2, sum)
# Returns the total amount of TOLB and Placebo treatment which is 204 and 205
AllData[2,2,2]
# Returns row 2, column 2, of matrix 2 which is 69

# 1d) 
AllDataT <- matrix(c(outcomeT, treatmentT))
# Creates a matrix combining the total data

# 2a)
data(VADeaths) # Loads in VADeaths
View(VADeaths) # Shows VADeaths in another window

is.data.frame(VADeaths) # VADeaths is not a dataframe
df <- data.frame(VADeaths) # Created a dataframe using VADeaths

# 2b)
total <- apply(df, 1, sum) # Returns the sum of each row
# Returned 44.2 67.7 103.5 161.6 241.4 

# 2c)
boxplot(VADeaths)
# Creates a boxplot showing the summary of the deathrate depending on
# the area and gender

# 3a)
typeof(state.x77) # Checks the type of state.x77
# Returns a double

# 3b)
df1 <- data.frame(state.x77) # Creates a dataframe using state.x77 data

# 3c)
Under4300 <- df1[,2] < 4300 
# Compares the column to the statement and returns a logical value for each 
# cell in the column
sum(Under4300) # Checks the number of TRUE values 
# There are 20 states that have income less than 4300

# 4a)
z <- factor(c('Agree', 'Agree', 'Strongly Agree', 'Disagree', 'Agree'))
# Creates a factor with the given elements

# 4b)
nlevels(z) # Check the number of levels of the factor
# Returns 3

# 4c)
levels(z) # Checks the levels of the factor
# Returns Agree, Disagree, and Strongly Agree

# 5a)
subjects <- c('English', 'Math', 'Chemistry', 'Physics') # Vector of subjects
percentage <- c('80', '100', '85', '95') # Vector of percentages
df2 <- data.frame(subjects, percentage) # Creates a dataframe with the vectors

# 5b)
Course <- subjects # Change the name of subject vector
Score <- percentage # Change the name of percentage vector
df2 <- data.frame(Course, Score) # Creates a dataframe with the new vectors

# 5c)
df2[c('Course')] # Extracts the course column

# 6)
data(swiss) # Loads the data
View(swiss) # Shows the data in another window

df3 <- subset(swiss, select = c(Examination, Education, Infant.Mortality))
# Creates a dataframe with only the selected columns
df3[c(1:3, 10:13),]
# Returns rows 1-3 and 10-13 of the dataframe
