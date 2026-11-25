CREATE TABLE readers (
    reader_id NUMBER PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    membership_code VARCHAR(30) UNIQUE NOT NULL,
    phone VARCHAR(25)
);

CREATE TABLE branches (
    branch_id NUMBER PRIMARY KEY,
    city VARCHAR(80) NOT NULL,
    address VARCHAR(150) NOT NULL,
    phone VARCHAR(25)
);

CREATE TABLE books (
    book_id NUMBER PRIMARY KEY,
    branch_id NUMBER NOT NULL,
    title VARCHAR(150) NOT NULL,
    author VARCHAR(100) NOT NULL,
    isbn VARCHAR(20) UNIQUE NOT NULL,
    CONSTRAINT fk_book_branch FOREIGN KEY (branch_id) REFERENCES branches(branch_id)
);

CREATE TABLE borrowings (
    borrowing_id NUMBER PRIMARY KEY,
    reader_id NUMBER NOT NULL,
    book_id NUMBER NOT NULL,
    borrow_date DATE NOT NULL,
    return_date DATE NOT NULL,
    CONSTRAINT fk_borrow_reader FOREIGN KEY (reader_id) REFERENCES readers(reader_id),
    CONSTRAINT fk_borrow_book FOREIGN KEY (book_id) REFERENCES books(book_id)
);


INSERT INTO readers (reader_id, first_name, last_name, email, membership_code, phone)
VALUES (1, 'Narek', 'Petrosyan', 'narek.petrosyan@example.com', 'LIB1001', '+37494112233');

INSERT INTO readers (reader_id, first_name, last_name, email, membership_code, phone)
VALUES (2, 'Mariam', 'Grigoryan', 'mariam.grigoryan@example.com', 'LIB1002', '+37495445566');


INSERT INTO branches (branch_id, city, address, phone)
VALUES (1, 'Yerevan', 'Abovyan St 22', '+37410521100');

INSERT INTO branches (branch_id, city, address, phone)
VALUES (2, 'Vanadzor', 'Tigran Mets Ave 18', '+37432223300');


INSERT INTO books (book_id, branch_id, title, author, isbn)
VALUES (1, 1, 'Samvel', 'Raffi', '9789939511234');

INSERT INTO books (book_id, branch_id, title, author, isbn)
VALUES (2, 2, '1984', 'George Orwell', '9780451524935');


INSERT INTO borrowings (borrowing_id, reader_id, book_id, borrow_date, return_date)
VALUES (1, 1, 1, DATE '2026-11-15', DATE '2026-11-30');

INSERT INTO borrowings (borrowing_id, reader_id, book_id, borrow_date, return_date)
VALUES (2, 2, 2, DATE '2026-11-18', DATE '2026-12-02');
