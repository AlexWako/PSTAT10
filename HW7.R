# Loading the database onto R studios
mydb <- dbConnect(RSQLite::SQLite(), 'PSTAT10-db.sqlite')

# 1
# Finding the employee number and age of all employee with age < 50
dbGetQuery(mydb, 'SELECT EMP_NO, AGE FROM EMPLOYEE WHERE AGE < 50')
# Returned (E1, 21) and (E2, 31)

# 2
# Finding all the names of the employees
dbGetQuery(mydb, 'SELECT NAME FROM EMPLOYEE')
# Returned SMITH, SMITH, BROWN, GREEN

# 3
# Finding all the distinct employee names
dbGetQuery(mydb, 'SELECT DISTINCT NAME FROM EMPLOYEE')
# Returned SMITH, BROWN, GREEN

# 4
# Finding all employee names that start with 'B'
dbGetQuery(mydb, 'SELECT NAME FROM EMPLOYEE WHERE NAME GLOB "B*"')
# Returned BROWN

# 5
# Finding the name and NI_NO of all employees
dbGetQuery(mydb, 'SELECT NAME, NI_NO FROM EMPLOYEE')
# Returned (SMITH, 123), (SMITH, 159), (BROWN, 5432), (GREEN, 7654)

# 6
# Finding the details of employees with age in between 31 and 65
dbGetQuery(mydb, 'SELECT * FROM EMPLOYEE WHERE AGE >= 31 and AGE <= 65')
# Returned (E2, 159, SMITH, 31, D1), (E3, 5432, BROWN, 65, D2), 
# (E5, 7654, GREEN, 52, D3)

# 7
# Checking if all departments have a manager
dbGetQuery(mydb, 'SELECT * FROM DEPARTMENT WHERE MANAGER IS NULL')
# No tuples returned so all departments have a manager

# 8
# Finding the date that customer 'C3' placed an order
dbGetQuery(mydb, 'SELECT DATE FROM SALES_ORDER WHERE CUST_NO IS "C3"')
# Returned the date 7/9/19

# 9
# Finding the products that are available in white
dbGetQuery(mydb, 'SELECT NAME FROM PRODUCT WHERE COLOR IS "WHITE"')
# Returned SOCKS and SHIRTS

# 10
# Finding the OFFICE that employee E2 occupies
dbGetQuery(mydb, 'SELECT OFFICE FROM EMPLOYEE_PHONE WHERE EMP_NO is "E2"')
# Returned R10