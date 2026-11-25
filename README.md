# Library Management Database
Create a simple relational database for a library system. The goal is to practice creating tables, relationships, primary keys, foreign keys, basic constraints, and SQL queries.

1. Database Tables
- readers
  - reader_id
  - first_name
  - last_name
  - email
  - membership_code
  - phone
- branches
  - branch_id
  - city
  - address
  - phone
- books
  - book_id
  - branch_id
  - title
  - author
  - isbn
- borrowings
  - borrowing_id
  - reader_id
  - book_id
  - borrow_date
  - return_date

2. Relationships
- A branch can have many books.
- Each book belongs to one branch.
- A reader can have many borrowings.
- A book can be included in many borrowings.
- Each borrowing belongs to one reader.
- Each borrowing is for one book.
- The relationships between tables must be implemented using foreign keys.

3. Required Constraints
- Every table must have a PRIMARY KEY.
- Reader email must be UNIQUE and NOT NULL.
- Reader membership_code must be UNIQUE and NOT NULL.
- Book isbn must be UNIQUE and NOT NULL.
- title, author, city, address, first_name, and last_name must be NOT NULL.
- Borrowing return_date must be greater than or equal to borrow_date.
- All foreign keys must reference the appropriate tables.

4. Sample Data
- 2–5 readers
- 2–3 branches
- 2–5 books
- 2–6 borrowings

5. Required SQL Queries
- Display all readers.
- Display all books with their branches.
- Display all borrowings with reader names, book titles, and borrow/return dates.
- Display all borrowings for a selected reader.
- Display all borrowings for a selected book.
- Count how many borrowings each reader has.
- Display books located in a specific city.
- Display borrowings ordered by borrow date.
