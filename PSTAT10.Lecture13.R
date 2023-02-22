# Creating a new RSQlite database with the name PSTAT10-db
mydb <- dbConnect(RSQLite::SQLite(), 'PSTAT10-db.sqlite')

# Creating a dataframe from the csv files
CUSTOMER <- read.csv("/Users/alexwako/Desktop/School/PSTAT 10/Sections and Lectures/DATA/CUSTOMER.txt")
EMPLOYEE <- read.csv("/Users/alexwako/Desktop/School/PSTAT 10/Sections and Lectures/DATA/EMPLOYEE.txt")
DEPARTMENT <- read.csv("/Users/alexwako/Desktop/School/PSTAT 10/Sections and Lectures/DATA/DEPARTMENT.txt")

# Adding dataframe into a relational database
# Syntax: dbWriteTable(1, 2, 3, 4, 5)
# 1 - The name of the database that the dataframe is being added to
# 2 - The name of the dataframe that is being added
# 3 - The relation name
# 4(overwrite = TRUE or FALSE) - Overwrites an already existing relation
# 5(append = TRUE or FALSE) - Appends the dataframe into an existing relation
dbWriteTable(mydb, "DEPARTMENT", DEPARTMENT)
dbWriteTable(mydb, "EMPLOYEE", EMPLOYEE)
dbWriteTable(mydb, "CUSTOMER", CUSTOMER)

# Show the relations in the database
dbReadTable(mydb, 'CUSTOMER', CUSTOMER)

# Show the names of the relations in the database
dbListTables(mydb)

# Selecting tuples from a relation
dbGetQuery(mydb, 'SELECT * FROM EMPLOYEE')
# String represent select all from employee where * = all
# The relations in the database are all dataframes

# Adding new dataframes into the database
dbWriteTable(mydb, 'mtcars', mtcars)
dbWriteTable(mydb, 'iris', iris)

# Selecting the first 5 tuples in the mtcars relation
dbGetQuery(mydb, 'SELECT * FROM mtcars LIMIT 5')

# Selecting wt column in mtcars with a condition where mpg > 30

# Selecting wt and mpg column in mtcars with the same condition
dbGetQuery(mydb, 'SELECT wt, mpg FROM mtcars WHERE mpg > 30')

# Selecting cyl in mtcars without duplicate values
dbGetQuery(mydb, 'SELECT DISTINCT cyl FROM mtcars')

# Selecting cyl and gear in mtcars with unique combinations
dbGetQuery(mydb, 'SELECT DISTINCT gear, cyl FROM mtcars')

# How DISTINCT works
dbGetQuery(mydb, 'SELECT DISTINCT NAME, AGE, DEPT_NO FROM EMPLOYEE')
# Returns two smith even though distinct was added
# DISTINCT only searches for unique combinations

dbGetQuery(mydb, 'SELECT DISTINCT NAME, DEPT_NO FROM EMPLOYEE')
# Since both SMITH work in D1, only one SMITH D1 was returned

# DISTINCT does not work multiple times
dbGetQuery(mydb, 'SELECT DISTINCT NAME, DISTINCT AGE, DEPT_NO FORM EMPLOYEE')
# Returns and error

# Using LIKE
dbGetQuery(mydb, 'SELECT * FROM EMPLOYEE WHERE NAME LIKE "B%"')
# Returns a tuple where the name starts with B followed by any
# sequence of characters
# When using LIKE % stands for any sequence of characters and _ stands
# for any single character

# Using not to return tuples that does not include a certain condition
dbGetQuery(mydb, 'SELECT * FROM EMPLOYEE WHERE NOT (NAME = "SMITH")')

# Rules for evaluating a condition expression
# 1) Evaluated from left to right
# 2) Sub-expression in brackets are evaluated first
# 3) NOT is evaluated before AND, OR

# Conditional statements in R are also used in SQL
dbGetQuery(mydb, 'SELECT * FROM EMPLOYEE WHERE AGE != 21')

# Conditional expressions within a range
dbGetQuery(mydb, 'SELECT * FROM EMPLOYEE WHERE (AGE BETWEEN 21 AND 31)')
dbGetQuery(mydb, 'SELECT * FROM EMPLOYEE WHERE (AGE NOT BETWEEN 21 AND 31)')

