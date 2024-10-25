import mysql.connector

try:
    mydb = mysql.connector.connect(
        host='127.0.0.1',
        port=3306,
        user='root',
        password='rootadmin',
        database='alx_book_store'
    )
except e:
    print(e)

cursor = mydb.cursor()

try:
    cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store;")
    print("Database 'alx_book_store' created successfully!")
except e:
    print(e)
cursor.close()
mydb.disconnect()