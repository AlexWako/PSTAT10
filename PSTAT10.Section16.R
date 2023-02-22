# Loading the database
mydb <- dbConnect(RSQLite::SQLite(), 'PSTAT10-db.sqlite')

# 1
dbSendStatement(mydb, 'INSERT INTO CUSTOMER
                VALUES("C7", "CHARLES", "Atlantic")')

# 2a
dbSendQuery(mydb, 'CREATE TABLE SHOES
            (SHOE ID REAL NOT NULL PRIMARY KEY,
            MODEL TEXT,
            COLOR TEXT)')

# 2b
dbListTables(mydb)
# Shoes does exist in the list of relations

# 2c
dbSendStatement(mydb, 'INSERT INTO SHOES
                VALUES (001, "Running", "BLUE"),
                (002, "XCountry", "GREEN")')

# 2d
dbSendStatement(mydb, 'INSERT INTO SHOES
                VALUES (001, "Climbing", "BLUE")')
# Returned an error

# 3a
# The primary key for this relation is SALES_ASSISTANT_ID

# 3b
# Foreign keys in the relation is SHOE_ID

# 3c
# We will have to use dbSendQuery(mydb, 'PRAGMA foreign_keys = ON')
# to enable foreign key support