import mysql.connector
from mysql.connector import Error

def create_database():
    try:
        connection = mysql.connector.connect(
            host = '',
            user = '',
            password = ''
        )

        if connection.is_connected():
            cursor = connection.cursor()
            cursor.execute('CREATE DATABASE IF NOT EXISTS alx_book_store')
            print('Database "alx_book_store" is Created Successfully!!!') 
    execpt Error as e:
        print(f'Error while connecting to MYSQL: {e}')