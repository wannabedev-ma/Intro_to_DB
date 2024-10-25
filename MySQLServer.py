import mysql.connector

try:
    mydb = mysql.connector.connect(
        host='127.0.0.1',
        port=3306,
        user='root',
        password='rootadmin',
        database='alx_book_store'
    )
except mysql.connector.Error:
    print(mysql.connector.Error)

cursor = mydb.cursor()

try:
    cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store;")
    print("Database 'alx_book_store' created successfully!")
except mysql.connector.Error:
    print(mysql.connector.Errore)
finally:
    if cursor:
        cursor.close()
    if mydb.is_connected():
        mydb.close()