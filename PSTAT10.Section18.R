# Loading the database
mydb <- dbConnect(RSQLite::SQLite(), 'PSTAT10-db.sqlite')

# 1
dbGetQuery(mydb, 'SELECT COUNT(CUST_NO) FROM CUSTOMER')
# Returned 4

# 2
dbGetQuery(mydb, 'SELECT * FROM CUSTOMER WHERE ADDRESS IS NULL')
# Returned no tuple

# 3
dbGetQuery(mydb, 'SELECT ORDER_NO FROM INVOICES GROUP BY ORDER_NO HAVING
           SUM(QUANTITY) >= 10000')
# Order 1 and 2 has an order with quantity larger than 10000

# 4
dbListFields(mydb, 'CUSTOMER')
# Returned 'CUST_NO', 'NAME', 'ADDRESS'

# 5a
# The relation STUDENT is not in 1NF because attributes PSTAT_Courses and
# Student_Courses have more than one attribute fact

# 5b
# Functional dependencies are:
# {Student_ID} ---> {Student_Name, Profesor_Name, Student_Grade}

# 5c
# The relation would have the tuples:
# STUDENT<001, Juan Lopez, 140, Alix Wu, A>
# STUDENT<001, Juan Lopez, 131, Alix Wu, B>
# STUDENT<002, Jane White, 10, John Brown, B>
# STUDENT<002, Jane White, 120B, John Brown, A>
# STUDENT<002, Jane White, 122, John Brown, C>
# STUDENT<003, Bei Wu, 5A, Ana Garcia, A>
