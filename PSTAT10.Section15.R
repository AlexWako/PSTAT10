# Loading in the database
mydb <- dbConnect(RSQLite::SQLite(), 'PSTAT10-db.sqlite')

# 1
# Joining the two relations together on PROD_NO
dbGetQuery(mydb, 'SELECT * FROM STOCK_TOTAL JOIN INVOICES 
           WHERE STOCK_TOTAL.PROD_NO = INVOICES.PROD_NO')

# 2
dbGetQuery(mydb, 'SELECT PRODUCT.NAME, PRODUCT.COLOR FROM CUSTOMER JOIN 
           SALES_ORDER ON CUSTOMER.CUST_NO = SALES_ORDER.CUST_NO JOIN 
           SALES_ORDER_LINE ON SALES_ORDER.ORDER_NO = SALES_ORDER_LINE.ORDER_NO 
           JOIN PRODUCT ON SALES_ORDER_LINE.PROD_NO = PRODUCT.PROD_NO 
           WHERE CUSTOMER.NAME IN ("ALEX", "CAROL")')
# Returned (PANTS, BLUE), (PANTS, BLUE), (SOCKS, WHITE)

# 3
# Returning the DEPT_NO FOR the Accounts manager
dbGetQuery(mydb, 'SELECT DEPT_NO FROM DEPARTMENT WHERE NAME IS "Accounts"')
# Returned D1

# 4
# Writing code to return a table shown in the worksheet
dbGetQuery(mydb, 'SELECT PROD_NO, ORDER_NO, QUANTITY FROM SALES_ORDER_LINE 
           ORDER BY ORDER_NO DESC')
