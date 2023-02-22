# Loading database
mydb <- dbConnect(RSQLite::SQLite(), 'PSTAT10-db.sqlite')

# 1
# Writing an SQL query that correlates to what is given on the worksheet
dbGetQuery(mydb, 'SELECT * FROM PRODUCT NATURAL JOIN SALES_ORDER_LINE')

# 2a
# Adding the tuple ('D4', 'COMPLAINTS', 'E3') to DEPARTMENT
dbSendStatement(mydb, 'INSERT INTO DEPARTMENT 
                VALUES ("D4", "COMPLAINTS", "E3")')

# 2b
# Creating a new relation called NEW_DEPARTMENT
dbSendStatement(mydb, 'CREATE TABLE NEW_DEPARTMENT
                (DEPT_NO TEXT NOT NULL PRIMARY KEY,
                NAME TEXT,
                MANAGER TEXT)')
dbSendStatement(mydb, 'INSERT INTO NEW_DEPARTMENT
                VALUES ("D4", "COMPLAINTS", "E3")')

# 2c
# Checking that NEW_DEPARTMENT exists
dbListTables(mydb)
# It exists

# 2d
# Deleting NEW_DEPARTMENT from the database
dbRemoveTable(mydb, 'NEW_DEPARTMENT')

# 2e
dbListTables(mydb)
# It is removed