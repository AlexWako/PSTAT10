# Loading the database
mydb <- dbConnect(RSQLite::SQLite(), 'PSTAT10-db.sqlite')

# Using GROUP BY to group the relation with a specific value
# Finding the number of products in each order number
dbGetQuery(mydb, 'SELECT ORDER_NO, SUM(QUANTITY) FROM INVOICES
           GROUP BY ORDER_NO')

# HAVING can be used after GROUP BY to add a conditional statement
dbGetQuery(mydb, 'SELECT ORDER_NO, SUM(QUANTITY) FROM INVOICES
           GROUP BY ORDER_NO HAVING SUM(QUANTITY) > 20000')

# Using ORDER BY to order a column in ascending order(unless specified)
dbGetQuery(mydb, 'SELECT * FROM PRODUCT ORDER BY NAME')

# Ordering a column in descending order
dbGetQuery(mydb, 'SELECT * FROM PRODUCT ORDER BY PROD_NO DESC')

# Ordering the columns of the relation
dbGetQuery(mydb, 'SELECT NAME, PROD_NO, COLOR FROM PRODUCT ORDER BY 1 DESC')
# By listing how the columns should appear the column that is being ordered
# changes

# Ordering by attributes
dbGetQuery(mydb, 'SELECT * FROM EMPLOYEE ORDER BY 2 DESC')

# Ordering by multiple attributes orders the first attribute first and then 
# the second if possible
dbGetQuery(mydb, 'SELECT * FROM EMPLOYEE ORDER BY 2 DESC, 5 DESC')

# JOIN or INNER JOIN is used to combine two relations where specified
# attributes have the same values
dbGetQuery(mydb, 'SELECT * FROM CUSTOMER JOIN SALES_ORDER')
# JOIN or INNER JOIN joins the two relation with the first relation having 
# each tuple join with all the tuples from the second relation

# JOIN or INNER JOIN with conditions can help join the two relations properly
dbGetQuery(mydb, 'SELECT * FROM CUSTOMER INNER JOIN SALES_ORDER
           WHERE CUSTOMER.CUST_NO = SALES_ORDER.CUST_NO')
# The format for specifying a attribute is 'relation.attribute'
# This condition matches the CUST_NO from one relation with the order and 
# combines the data together

# NATURAL JOIN automatically chooses the join variable
dbGetQuery(mydb, 'SELECT * FROM CUSTOMER NATURAL JOIN SALES_ORDER')
# Returns the same results as the conditional JOIN code
# When the attribute name is ambiguous, nothing returns

# LEFT JOIN combines two relations on specific attributes
dbGetQuery(mydb, 'SELECT * FROM SALES_ORDER_LINE LEFT JOIN PRODUCT ON 
           PRODUCT.PROD_NO = SALES_ORDER_LINE.PROD_NO')
# Order for left join matters
dbGetQuery(mydb, 'SELECT * FROM PRODUCT LEFT JOIN SALES_ORDER_LINE ON
           PRODUCT.PROD_NO = SALES_ORDER_LINE.PROD_NO')
# Since the SALES_ORDER_LINE relation does not have every PROD_NO that PRODUCT 
# has, some were left unmatched