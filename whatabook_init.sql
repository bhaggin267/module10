import mysql.connector

cnx = mysql.connector.connect(
    host='whatabook',
    user='root',
    password='Hubcapsb109$',
    database='sql'
)

CREATE TABLE users (
    userid INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    firstname VARCHAR(75) NOT NULL,
    lastname VARCHAR(75) NOT NULL
);


CREATE TABLE books (
    bookid INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    bookname VARCHAR(200) NOT NULL,
    details VARCHAR(500),
    author VARCHAR(200) NOT NULL
);

CREATE TABLE stores (
    storeid INT NOT NULL PRIMARY KEY,
    locale VARCHAR(500) NOT NULL
);

CREATE TABLE wishlist (
    wishlistid INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    userid INT NOT NULL,
    bookid INT NOT NULL,
    FOREIGN KEY (userid) REFERENCES users(userid),
    FOREIGN KEY (bookid) REFERENCES books(bookid)
);

INSERT INTO stores (storeid, locale) VALUES (1, '123 Main St, City, State, Zip');

INSERT INTO books (bookid, bookname, details, author) VALUES
(1, 'Book 1', 'Book 1 details', 'Author 1'),
(2, 'Book 2', 'Book 2 details', 'Author 2'),
(3, 'Book 3', 'Book 3 details', 'Author 3'),
(4, 'Book 4', 'Book 4 details', 'Author 4'),
(5, 'Book 5', 'Book 5 details', 'Author 5'),
(6, 'Book 6', 'Book 6 details', 'Author 6'),
(7, 'Book 7', 'Book 7 details', 'Author 7'),
(8, 'Book 8', 'Book 8 details', 'Author 8'),
(9, 'Book 9', 'Book 9 details', 'Author 9');

INSERT INTO users (userid, firstname, lastname) VALUES
(1, 'User 1', 'Last Name 1'),
(2, 'User 2', 'Last Name 2'),
(3, 'User 3', 'Last Name 3');

INSERT INTO wishlist (wishlistid, userid, bookid) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);


cursor.close()
cnx.close()
