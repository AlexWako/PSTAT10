# Loading the database
mydb <- dbConnect(RSQLite::SQLite(), 'PSTAT10-db.sqlite')

# We can use correlation names to abbreviate any column names
dbGetQuery(mydb, 'SELECT C.NAME FROM CUSTOMER C')
# This returns all the tuples in CUSTOMER.NAME
# We can also change the name of the column
dbGetQuery(mydb, 'SELECT C.NAME AS CUSTOMER_NAME FROM CUSTOMER C')
# Changes NAME to CUSTOMER_NAME

# Building a query by joining two relations together
dbGetQuery(mydb, 'SELECT EMPLOYEE.EMP_NO AS "EMPLOYEE NUMBER",
           EMPLOYEE.NAME AS "EMPLOYEE NAME",
           DEPARTMENT.NAME AS "DEPARTMENT MANAGED"
           FROM EMPLOYEE JOIN DEPARTMENT
           WHERE EMPLOYEE.DEPT_NO = DEPARTMENT.DEPT_NO
           AND EMPLOYEE.EMP_NO = DEPARTMENT.MANAGER')

# Building a query by joining more than two relations together
dbGetQuery(mydb, 'SELECT C.CUST_NO, C.NAME AS CUSTOMER_NAME, 
           P.NAME AS PRODUCT_NAME, COLOR AS REQUIRED_COLOR
           FROM CUSTOMER C, SALES_ORDER_LINE O, SALES_ORDER S, PRODUCT P
           WHERE C.CUST_NO = "C1"
           AND C.CUST_NO = S.CUST_NO
           AND S.ORDER_NO = O.ORDER_NO
           AND O.PROD_NO = P.PROD_NO')

# Creating a new relation from a query result
ALEX_PREFERENCES <- dbGetQuery(mydb, 'SELECT C.CUST_NO, C.NAME AS CUSTOMER_NAME, 
           P.NAME AS PRODUCT_NAME, COLOR AS REQUIRED_COLOR
           FROM CUSTOMER C, SALES_ORDER_LINE O, SALES_ORDER S, PRODUCT P
           WHERE C.CUST_NO = "C1"
           AND C.CUST_NO = S.CUST_NO
           AND S.ORDER_NO = O.ORDER_NO
           AND O.PROD_NO = P.PROD_NO')
# Adding the query to the database as a relation
dbWriteTable(mydb, 'ALEX_PREFERENCES', ALEX_PREFERENCES, overwrite = TRUE)

# Adding a tuple to an existing relation
dbSendStatement(mydb, 'INSERT INTO PRODUCT VALUES ("p6", "SOCKS", "GREEN")')
# Syntax is the (database, string with SQL functions)
dbReadTable(mydb, 'PRODUCT')

# Creating a new relation
dbSendQuery(mydb, 'CREATE TABLE SOFT_TOY
(TOY_ID TEXT NOT NULL PRIMARY KEY,
TOY_NAME TEXT,
COLOR TEXT,
PRICE REAL,
CHECK (length("TOY_ID") <= 4))')
# Each text in the parenthesis represents the columns of the relation and
# what the elements in the column are
# We can use check to add conditions to the data being put in
# dbExecute() can also work in the same way

# To complete making a new relation using foreign keys we must enable it
dbSendQuery(mydb, 'PRAGMA foreign_keys = ON')

# Creating a relation with a foregin key
dbSendQuery(mydb, 'CREATE TABLE TOY_SUPPLIER
            (SUPPLIER_ID TEXT NOT NULL PRIMARY KEY,
            SUPPLIER_NAME TEXT,
            TOY_ID TEXT,
            FOREIGN KEY (TOY_ID) REFERENCES SOFT_TOYS)')
# We have to reference any foreign keys in the relation

# PRAGMA is short for pragmatic information
# This command is exclusive to SQLite
dbGetQuery(mydb, 'PRAGMA foreign_key_list("TOY_SUPPLIER")')
# Returns a dataframe showing if a foregin key exists

dbGetQuery(mydb, 'PRAGMA table_info("SOFT_TOY")')
# Returns a dataframe containing information of the table

# Adding tuples to relation
dbSendStatement(mydb, 'INSERT INTO SOFT_TOY
                VALUES (007, "BEAR", "BLUE", 5.99)')

# Adding a new tuple with an existing primary key in the relation is not possible
dbSendStatement(mydb, 'INSERT INTO SOFT_TOY
                VALUES (007, "DOG", "RED", 5.99)')
# Returns an error

# Adding new data to SOFT_TOY
dbSendStatement(mydb, 'INSERT INTO SOFT_TOY
                VALUES (002,"BEAR","BROWN",5.99),
                (003,"BEAR","PINK",5.99),
                (004,"DOG","BROWN",5.99),
                (005,"KITTEN","PURPLE",5.99)')