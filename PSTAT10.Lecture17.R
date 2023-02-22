# Loading the database
mydb <- dbConnect(RSQLite::SQLite(), 'PSTAT10-db.sqlite')

# Deleting relations from the database
dbWriteTable(mydb, 'iris', iris) # Adding a relation
dbRemoveTable(mydb, 'iris') # Removing a relation

# Adding mtcars to the database
dbWriteTable(mydb, 'mtcars', mtcars)

# Executing an SQL query without it being returned(Same as get query but with no
# return)
result <- dbSendQuery(mydb, 'SELECT mpg FROM mtcars')

# Showing the results from the dbSendQuery variable
dbFetch(result, n=10) # Returnign the first 10 rows

# The results are taken from the query and returned
# That means the next time the same code is run, the 10 rows will be rows 11-20
dbFetch(result, n=10)

# Keeping track of the row counts 
dbGetRowCount(result)

# To remove the query executed in the variable
dbClearResult(result)

# To find what the type of element each column contains
dbDataType(mydb, mtcars)

# We can nest the SQL statements
dbGetQuery(mydb, 'SELECT NAME, EMP_NO FROM EMPLOYEE
           WHERE AGE >
           (SELECT MAX(AGE) FROM EMPLOYEE WHERE DEPT_NO = "D1")')
# The nested statement must be in parenthesis

# Creating a VIEW
# A VIEW is a virtual relation that contains rows and columsn from different
# real relations within the database
# If a modification is made to a relation that is being show with the view, the
# change will also occur in the view relation
VIEW1 <- dbSendQuery(mydb, 'CREATE VIEW FIRSTVIEW AS SELECT PROD_NO, NAME FROM
                     PRODUCT')
# Returning elements in the VIEW
dbGetQuery(mydb, 'SELECT PROD_NO FROM FIRSTVIEW')

# Creating another VIEW
VIEW2 <- dbSendQuery(mydb, 'CREATE VIEW SECONDVIEW AS
                     SELECT EMPLOYEE.EMP_NO,
                     EMPLOYEE.NAME,
                     DEPARTMENT.MANAGER
                     FROM EMPLOYEE JOIN DEPARTMENT WHERE
                     EMPLOYEE.DEPT_NO = DEPARTMENT.DEPT_NO')

# Deleting VIEW
dbSendStatement(mydb, 'DROP VIEW FIRSTVIEW')
dbSendStatement(mydb, 'DROP VIEW SECONDVIEW')

# Querying part of a relation
DEL_ALEX <- dbSendStatement(mydb, 'DELETE FROM CUSTOMER WHERE NAME="ALEX"')
dbGetRowsAffected(DEL_ALEX) 
# Shows how many rows were affected in the database by using that query

# If we see customer
dbGetQuery(mydb, 'SELECT * FROM CUSTOMER')
# Information about ALEX has been removed in the CUSTOMER relation

# We can restore the deleting query
dbWriteTable(mydb, "CUSTOMER", CUSTOMER, overwrite=TRUE)

# Disconnecting from the database
dbDisconnect(mydb)
# Now we cannot query from the database