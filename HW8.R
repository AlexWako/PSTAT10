# Importing the database
mydb <- dbConnect(RSQLite::SQLite(), 'PSTAT10-db.sqlite')

# 1
# Domains for PRODUCT relation
# PROD_NO<p1, p2, p3, ...>
# NAME<PANTS, SOCKS, SHIRTS>
# COLOR<BLUE, KHAKI, GREEN, ...>

# 2
# Finding age of oldest employee at Tiny Clothes
dbGetQuery(mydb, 'SELECT MAX(AGE) FROM EMPLOYEE')
# Returned 65 as the oldest

# 3
# Finding employees under the age 50 with a name contianing the letter R
dbGetQuery(mydb, 'SELECT NAME FROM EMPLOYEE WHERE AGE < 50 AND NAME LIKE "%R%"')
# Returned no rows

# 4
# Finding the employee number of the sales department manager
dbGetQuery(mydb, 'SELECT MANAGER FROM DEPARTMENT WHERE NAME IS "Sales"')
# Returned E5

# 5
# Finding the number of departments in Tiny Clothes
dbGetQuery(mydb, 'SELECT COUNT(DISTINCT DEPT_NO) FROM DEPARTMENT')
# Returned 3

# 6
# Finding Carol's customer number
dbGetQuery(mydb, 'SELECT CUST_NO FROM CUSTOMER WHERE NAME IS "CAROL"')
# Returned C3

# 7
# Finding who works in department D2
dbGetQuery(mydb, 'SELECT NAME FROM EMPLOYEE WHERE DEPT_NO IS "D2"')
# Returned BROWN

# 8
# Finding the number of white products in stock
dbGetQuery(mydb, 'SELECT SUM(QUANTITY) FROM PRODUCT JOIN STOCK_TOTAL
           ON PRODUCT.PROD_NO = STOCK_TOTAL.PROD_NO
           WHERE PRODUCT.COLOR IS "WHITE"')
# Returned 1000

# 9
# Joining EMPLOYEE and DEPARTMENT on DEPT_NO using LEFT JOIN
dbGetQuery(mydb, 'SELECT * FROM EMPLOYEE LEFT JOIN DEPARTMENT
           ON EMPLOYEE.DEPT_NO = DEPARTMENT.DEPT_NO')
# Returned a relation with elements of both EMPLOYEE and DEPARTMENT