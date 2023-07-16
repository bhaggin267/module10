import mysql.connector

cnx = mysql.connector.connect(
    host='whatabook',
    user='root',
    password='Hubcapsb109$',
    database='sql'
)

CREATE TABLE users (
    user_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(75) NOT NULL,
    last_name VARCHAR(75) NOT NULL
);


CREATE TABLE books (
    book_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    book_name VARCHAR(200) NOT NULL,
    details VARCHAR(500),
    author VARCHAR(200) NOT NULL
);

CREATE TABLE stores (
    store_id INT NOT NULL PRIMARY KEY,
    locale VARCHAR(500) NOT NULL
);

CREATE TABLE wishlist (
    wishlist_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    book_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);

INSERT INTO stores (store_id, locale) VALUES (1, '123 Main St, City, State, Zip');

INSERT INTO books (book_id, book_name, details, author) VALUES
(1, 'Book 1', 'Book 1 details', 'Author 1'),
(2, 'Book 2', 'Book 2 details', 'Author 2'),
(3, 'Book 3', 'Book 3 details', 'Author 3'),
(4, 'Book 4', 'Book 4 details', 'Author 4'),
(5, 'Book 5', 'Book 5 details', 'Author 5'),
(6, 'Book 6', 'Book 6 details', 'Author 6'),
(7, 'Book 7', 'Book 7 details', 'Author 7'),
(8, 'Book 8', 'Book 8 details', 'Author 8'),
(9, 'Book 9', 'Book 9 details', 'Author 9');

INSERT INTO users (user_id, first_name, last_name) VALUES
(1, 'User 1', 'Last Name 1'),
(2, 'User 2', 'Last Name 2'),
(3, 'User 3', 'Last Name 3');

INSERT INTO wishlist (wishlist_id, user_id, book_id) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);


cursor.close()
cnx.close()
