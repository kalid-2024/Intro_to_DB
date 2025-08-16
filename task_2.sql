CREATE TABLE Authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(215)
);

CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(130),
    author_id FOREIGN KEY referencing Authors table,
    price DOUBLE,
    publication_date DATE
);

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) UNIQUE NOT NULL,
    address TEXT
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    order_date DATE
);

CREATE TABLE Order_Details (
    orderdetailid INT PRIMARY KEY,
    order_id FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    book_id FOREIGN KEY (book_id) REFERENCES Books(book_id),
    quantity DOUBLE
);
