# 1a - c Done Outside the window

# 1d
# Creating a database
mydb <- dbConnect(RSQLite::SQLite(), 'PSTAT10-db.sqlite')

# 1e
# Importing all files that were given in the zipped file
CUSTOMER <- read.csv("/Users/alexwako/Desktop/School/PSTAT 10/Sections and Lectures/DATA/CUSTOMER.txt")
EMPLOYEE <- read.csv("/Users/alexwako/Desktop/School/PSTAT 10/Sections and Lectures/DATA/EMPLOYEE.txt")
DEPARTMENT <- read.csv("/Users/alexwako/Desktop/School/PSTAT 10/Sections and Lectures/DATA/DEPARTMENT.txt")
EMPLOYEE_PHONE <- read.csv("/Users/alexwako/Desktop/School/PSTAT 10/Sections and Lectures/DATA/EMPLOYEE_PHONE.txt")
INVOICES <- read.csv("/Users/alexwako/Desktop/School/PSTAT 10/Sections and Lectures/DATA/INVOICES.txt")
PRODUCT <- read.csv("/Users/alexwako/Desktop/School/PSTAT 10/Sections and Lectures/DATA/PRODUCT.txt")
SALES_ORDER_LINE <- read.csv("/Users/alexwako/Desktop/School/PSTAT 10/Sections and Lectures/DATA/SALES_ORDER_LINE.txt")
SALES_ORDER <- read.csv("/Users/alexwako/Desktop/School/PSTAT 10/Sections and Lectures/DATA/SALES_ORDER.txt")
STOCK_TOTAL <- read.csv("/Users/alexwako/Desktop/School/PSTAT 10/Sections and Lectures/DATA/STOCK_TOTAL.txt")

# 1f
# Creating relations for the database
dbWriteTable(mydb, "CUSTOMER", CUSTOMER)
dbWriteTable(mydb, "EMPLOYEE", EMPLOYEE)
dbWriteTable(mydb, "DEPARTMENT", DEPARTMENT)
dbWriteTable(mydb, "EMPLOYEE_PHONE", EMPLOYEE_PHONE)
dbWriteTable(mydb, 'INVOICES', INVOICES)
dbWriteTable(mydb, 'PRODUCT', PRODUCT)
dbWriteTable(mydb, 'SALES_ORDER_LINE', SALES_ORDER_LINE)
dbWriteTable(mydb, 'SALES_ORDER', SALES_ORDER)
dbWriteTable(mydb, 'STOCK_TOTAL', STOCK_TOTAL)

# 2
# Listing all the relations in the database
dbListTables(mydb)
# Returns "CUSTOMER" "DEPARTMENT" "EMPLOYEE" "EMPLOYEE_PHONE" "INVOICES" 
# "PRODUCT" "SALES_ORDER" "SALES_ORDER_LINE" "STOCK_TOTAL"     

# 3
# Returns all the tuples in the CUSTOMER Relation
dbReadTable(mydb, 'CUSTOMER')
# Returns 
# CUST_NO  NAME   ADDRESS
# 1      C1  ALEX     State
# 2      C2   BOB Hollister
# 3      C3 CAROL     Ocean
# 4      C6  JUAN    Phelps

# 4
# Adding mtcars into the database
dbWriteTable(mydb, 'mtcars', mtcars)
# Selecting the first five weight
dbGetQuery(mydb, 'SELECT wt FROM mtcars LIMIT 5')
# Returned
# wt
# 1 2.620
# 2 2.875
# 3 2.320
# 4 3.215
# 5 3.440






