library(MASS) # Loading MASS package

data('painters') # Loading in the dataframe
View(painters) # Viewing the painters dataframe
ls(painters)  # Viewing the columns of the dataframe

# Question to answer:
# How does the school which a painter belongs affect the scores
# of expression?

pAmeanE <- mean(painters$Expression[1:10]) # mean score of expression for School A
pBmeanE <- mean(painters$Expression[11:16]) # mean score of expression for School B
pCmeanE <- mean(painters$Expression[17:22]) # mean score of expression for School C
pDmeanE <- mean(painters$Expression[23:32]) # mean score of expression for School D
pEmeanE <- mean(painters$Expression[33:39]) # mean score of expression for School E
pFmeanE <- mean(painters$Expression[40:43]) # mean score of expression for School F
pGmeanE <- mean(painters$Expression[44:50]) # mean score of expression for School G
pHmeanE <- mean(painters$Expression[50:54]) # mean score of expression for School H

AllMeanE <- c(pAmeanE, pBmeanE, pCmeanE, pDmeanE, 
             pEmeanE, pFmeanE, pGmeanE, pHmeanE)
# A vector created from all the means

x_name <- c('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H') # Label for the x axis

# Creating a barplot of the data
barplot(AllMeanE, names.arg = x_name,
        main = 'Relationship Between the School and Expression Score',
        xlab = 'School', ylab = 'Expression Score', col = 'Red',
        border = 'Black')

# The data shows that painters from School H had a better average Expression 
# Score than any of the other schools. On the other hand, School D had the worst
# average Expression Score

# Question to answer:
# How does the school which a painter belong affect the score of Composition?

pAmeanC <- mean(painters$Composition[1:10]) # mean score of composition for School A
pBmeanC <- mean(painters$Composition[11:16]) # mean score of composition for School B
pCmeanC <- mean(painters$Composition[17:22]) # mean score of composition for School C
pDmeanC <- mean(painters$Composition[23:32]) # mean score of composition for School D
pEmeanC <- mean(painters$Composition[33:39]) # mean score of composition for School E
pFmeanC <- mean(painters$Composition[40:43]) # mean score of composition for School F
pGmeanC <- mean(painters$Composition[44:50]) # mean score of composition for School G
pHmeanC <- mean(painters$Composition[50:54]) # mean score of composition for School H

AllMeanC <- c(pAmeanC, pBmeanC, pCmeanC, pDmeanC, 
              pEmeanC, pFmeanC, pGmeanC, pHmeanC)
# A vector created from all the means

# Creating a barplot of the data
barplot(AllMeanC, names.arg = x_name, ylim = c(0, 20),
        main = 'Relationship Between the School and Composition Score',
        xlab = 'School', ylab = 'Composition Score', col = 'Blue',
        border = 'Black')

# The data shows that School H once again has the highest average score but now 
# in the Composition category. This time, School F has the lowest average 
# Composition score, but School D is close.