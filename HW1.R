# 1. 
x <- c(5,7,3,10,1) # x is now a vector with the given numbers

x[3] # a) code ouputs 3

x[-2] # b) code outputs 5 3 10 1

x[c(-1,-4)] # c) code outputs 7 3 1

x[4] <- 17 # d) x is now 5 7 3 17 1

x[c(1,3)] <- 4 # e) x is now 4 7 4 17 1

# 2. 
x <- c(1,2,3,7,6,8,3,12,0,17) # a) x is now a vector with the given numbers

length(x) # b) code outputs a length of 10 

sort(x, decreasing = TRUE) # c) code puts x in descending order now

mean(x) # d) code outputs the mean of x as 5.9

# 3.
print("PSTAT 10 HW 1 Question 5.", quote = FALSE) 
# prints the string with no quotation marks

# 4. 
seq(2.25, 3, by = 0.25 ) 
# code outputs a sequence from 2.25-3 in 0.25 intervals

# 5.
rep(1:4, each = 3, length.out = 10)
# code outputs each number from 1-4 three times stopping at the tenth number

# 6.
help(readline) # a) looks up the readline function in Rstudio Help

answer <- readline(prompt = "What is your name? ") 
# b) 'answer' is the answer inputted by the user

cat("Users name is", answer)
# c) prints a combination of the string and 'answer'

# d) Alex results in 'Users name is Alex'
# Lupo results in 'Users name is Lupo'
# Enzo results in 'Users name is Enzo'
