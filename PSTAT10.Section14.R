# Get the database
mydb <- dbConnect(RSQLite::SQLite(), 'PSTAT10-db.sqlite')

# 1
dbGetQuery(mydb, 'SELECT NAME FROM EMPLOYEE')
# Returned all the name column in the employee relation

# 2
dbGetQuery(mydb, 'SELECT NAME FROM DEPARTMENT WHERE NAME GLOB "S*r*"')
# Returned Stores
dbGetQuery(mydb, 'SELECT NAME FROM DEPARTMENT WHERE NAME GLOB "S*R*"')
# Returned no tuple
# Since GLOB is case sensitive, the results of the two lines of code will not
# be the same

# 3
dbGetQuery(mydb, 'SELECT NAME, COLOR FROM PRODUCT WHERE NAME IS "SOCKS" AND 
           COLOR IS "WHITE"')
# Tiny Clothes does sell white socks

# 4
dbGetQuery(mydb, 'SELECT NAME, AGE FROM EMPLOYEE WHERE NAME IS "BROWN"')
# Employee names brown is 65 years old

# 5
dbGetQuery(mydb, 'SELECT EMP_NO FROM EMPLOYEE WHERE NAME GLOB "*R*"')
# Employee number E3 and E5 contains a R in their name

# 6
dbGetQuery(mydb, 'SELECT NAME, AGE, EMP_NO FROM EMPLOYEE WHERE AGE IS NOT
           "21"')
# Returned the data for SMITH, BROWN, and GREEN and their ages are 31, 65,
# and 52 respectively

# 7
dbGetQuery(mydb, 'SELECT NAME FROM DEPARTMENT')
# The names in department are Accounts, Stores, and Sales
