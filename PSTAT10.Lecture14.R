# Loading the database onto R studios
mydb <- dbConnect(RSQLite::SQLite(), 'PSTAT10-db.sqlite')

# Checking the tables on the database
dbListTables(mydb)

# Checking if tiny clothes have any orders for products p1, p2, p3
dbGetQuery(mydb, 'Select * from SALES_ORDER_LINE')

# Writing a where conditions that returns any tuple with p1, p2, p3
dbGetQuery(mydb, 'Select * from SALES_ORDER_LINE where PROD_NO IN ("p1", "p2",
"p3")')
# Returns all tuples with p1, p2, or p3

# Checking if tiny clothes has any orders not in products p1, p2, p3
dbGetQuery(mydb, 'SELECT * FROM SALES_ORDER_LINE WHERE PROD_NO NOT IN ("p1", 
           "p2", "p3")')

# Finding all tuples where the manager is E3 in departments
dbGetQuery(mydb, 'SELECT * FROM DEPARTMENT WHERE MANAGER IS "E3"')

# Returning computations of tuples
dbGetQuery(mydb, 'SELECT *, PRICE * QUANTITY FROM INVOICES')
# Returns the tuples and an added column with the computation

# Summarizing functions in SQL help summarize a relation
# AVG-Average of variable
# MAX-Max of variable
# MIN-Min of variable
# COUNT-Number of variable
# SUM-The sum of the variable

# Selecting the average of a column
dbGetQuery(mydb, 'SELECT AVG(QUANTITY) FROM INVOICES')

# Finding the number of unique values in a column
dbGetQuery(mydb, 'SELECT COUNT(DISTINCT PROD_NO) FROM INVOICES')

# GLOB Operator is used to compare values using wildcard operators
# * = 0 or more characters
# ? = single number or character
# GLOB is case sensitive
dbGetQuery(mydb, 'SELECT NAME FROM EMPLOYEE WHERE NAME GLOB "*R*"')
# Returns every name with R
dbGetQuery(mydb, 'SELECT NAME FROM EMPLOYEE WHERE NAME GLOB "*r*"')
# Nothing returned because no name in NAME has a r