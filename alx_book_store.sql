DROP DATABASE alx_book_store;
CREATE DATABASE IF NOT EXISTS alx_book_store;

USE alx_book_store;

CREATE TABLE IF NOT EXISTS Authors (
	author_id INT PRIMARY KEY AUTO_INCREMENT,
    author_name VARCHAR(215) NOT NULL);

CREATE TABLE IF NOT EXISTS Books (
	book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(130) NOT NULL,
    author_id INT,
    price DOUBLE NOT NULL,
    publication_date DATE NOT NULL,
    FOREIGN KEY (author_id) REFERENCES  Authors (author_id)
		ON DELETE SET NULL
        ON UPDATE CASCADE);
        
CREATE TABLE IF NOT EXISTS Customers (
	customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) NOT NULL,
    address TEXT NOT NULL);
    
CREATE TABLE IF NOT EXISTS Orders (
	order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
		ON DELETE CASCADE
        ON UPDATE CASCADE);
        
CREATE TABLE IF NOT EXISTS Order_Details (
	orderdetail_id INT AUTO_INCREMENT PRIMARY KEY,
	order_id INT,
	book_id INT,
	quantity DOUBLE NOT NULL,
	FOREIGN KEY (order_id) REFERENCES Orders (order_id)
		ON DELETE CASCADE
        ON UPDATE CASCADE,
	FOREIGN KEY (book_id) REFERENCES Books (book_id)
    	ON DELETE CASCADE
        ON UPDATE CASCADE
	);
    
