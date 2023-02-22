# Loading the database
mydb <- dbConnect(RSQLite::SQLite(), 'PSTAT10-db.sqlite')

# 1a
# Adding the tuple 'D4, COMPLAINTS, E3' to department
dbSendStatement(mydb, 'INSERT INTO DEPARTMENT
                VALUES ("D4", "COMPLAINTS", "E3")')

# 1b
# Creating a new relation called NEW_DEPARTMENT
dbSendStatement(mydb, 'CREATE TABLE NEW_DEPARTMENT
                (DEPT_NO TEXT NOT NULL PRIMARY KEY,
                NAME TEXT,
                MANAGER TEXT)')
dbSendStatement(mydb, 'INSERT INTO NEW_DEPARTMENT
                VALUES ("D4", "COMPLAINTS", "E3")')

# 1c 
# Checking that NEW_DEPARTMENT exists
dbListTables(mydb)
# NEW_DEPARTMENT is in the list of relations

# 1d
# Deleting NEW_DEPARTMENT from the database
dbRemoveTable(mydb, 'NEW_DEPARTMENT')

# 1e
# Checking that NEW_DEPARTMENT is deleted
dbListTables(mydb)
# NEW_DEPARTMENT is not in the list of relations anymore

# Adding the dataset airquality into the database
dbWriteTable(mydb, "airquality", airquality)

# 2a
rows <- dbSendQuery(mydb, 'SELECT ozone FROM airquality')
dbFetch(rows, 10)
# Returning rows in batches of 10

# 2b
# Checking if rows are being returned in batches of 10
dbGetRowCount(rows)
# Each time the code from 2a is ran, the row count increases by 10

# 2c
# Closing connection with the database
dbDisconnect(mydb)

# Updated Worksheet

# 1
# Returning the name and phone extension of the manager of accounts
dbGetQuery(mydb, 'SELECT E.NAME, EP.EXTENSION
           FROM DEPARTMENT D JOIN EMPLOYEE E ON 
           D.MANAGER = E.EMP_NO JOIN
           EMPLOYEE_PHONE EP ON E.EMP_NO = EP.EMP_NO
           WHERE D.NAME = "Accounts"')
# Returned (SMITH, 811) and (SMITH, 813)

# 2
dbGetQuery(mydb, 'SELECT E.NAME, EP.EXTENSION
           FROM EMPLOYEE_PHONE EP JOIN EMPLOYEE E ON 
           EP.EMP_NO = E.EMP_NO WHERE
           EP.OFFICE = 
           (SELECT OFFICE FROM EMPLOYEE_PHONE GROUP BY OFFICE HAVING COUNT(*)>1)')
# Returned (BROWN, 123), (GREEN, 123)
