# Logical Values can be true or false
# They can be represented by
# '==' = Equal to
# '!=' = Not equal to
# > or < = greater or less than
# >= or <= = greater than or less than and equal to

# A whole dataset can be compared to
smallstate <- state.area < 10000
smallstate # Shows all the boolean statements of the dataset

# The total number of True value can be found
sum(smallstate)

typeof(smallstate) # Would return as a logical

# When comparing two logical values
# & = and
# | = or
# ! = not

# Finding the index of a dataset
which(state.name == 'Alaska') # Returns the index and in this case is 2

x <- sort(state.area) # Sort in increasing order

which(x > 100000) 
# Adding a boolean statement in the parameter returns all index that return 
# True with the statement. In this case 43-50

# Creating a nominal level factor
gender <- factor(c('male', 'female', 'female', 'male')) 

# Checks the unique elements of a factor
levels(gender)

# Checks the number of unique elements of a factor
nlevels(gender)

# Returning a frequency table of a factor
table(gender) 

# Plotting a factor will label the variables
plot(gender) # Plots the frequency of each variable

# Created a ordinal level factor
grades <- ordered(c('A', 'B')) # The program will know that A comes before B
grades <- factor(c('A', 'B'), ordered = TRUE) # An alternative to ordered()

is.factor(grades) # An ordered vector is still a factor

# Replacing areas of a string
# sub(old, new, string) replaces parts of the string
y <- c("Hello this is Alex")
sub('is', "isn't", y) 
# Replaces is with isn't but since sub() only replaces the first match
# the 'is' in this would change to thisn't instead of this isn't

# gsub(old, new, string) replaces all matches with the new 
x <- c('HelloHelloHello')
gsub('Hello', 'Hi', x) # All the Hello in the string becomes Hi

# These changes do not change the orignal vector unless they equate

# Pre-defined constant in R
letters # lower-case letters
LETTERS # upper-case letters
month.abb # 3-letter abbreviation of a month
month.name # full name of month

# Example
letters[1:4] # Returns the first four letters of the alphabet in lower-case
LETTERS[1:3] # Returns the first three letters of the alphabet in upper-case
month.abb[1:3] # Returns the first three months in abbreviation
month.name[10:12] # Returns the last three months in full name








