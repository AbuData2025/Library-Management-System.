# Library-Management-System.
A MySQL database for managing library books, borrowers, loans, and fines. Features relational schema, CRUD operations, and SQL queries (joins, constraints). Includes scripts for setup, sample data, and queries, perfect for showcasing database skills.

# Online Library Management System

## Overview
This project is a MySQL-based database for managing a library system. It tracks books, borrowers, loans, and fines using a relational schema with foreign keys, constraints, and triggers. The project demonstrates proficiency in database design, CRUD operations, and advanced SQL queries (joins, aggregations, updates). It’s designed as a portfolio piece to showcase MySQL skills for potential employers.

## Features
- **Relational Schema**: Tables for `Books`, `Borrowers`, `Loans`, and `Fines` with appropriate primary and foreign key constraints.
- **Sample Data**: Populated with realistic data (10+ books and borrowers, multiple loans and fines).
- **SQL Queries**: Examples include listing available books, identifying overdue loans, and calculating total fines per borrower.
- **Constraints**: Enforces rules like `DueDate > LoanDate` and allows `NULL` for `ReturnDate` for unreturned books.

## Technologies
- MySQL (version 5.6 or later)
- MySQL Workbench (optional, for visualization)

## Setup Instructions
1. Clone the repository: `git clone https://github.com/your-username/Library-Management-System.git`
2. Create the database: Run `schema.sql` in MySQL Workbench or a MySQL client.
3. Populate the tables: Execute `sample_data.sql` to insert sample data.
4. Run queries: Use `queries.sql` to explore the database with example queries.

## File Structure
- `schema.sql`: Creates the database and tables with constraints.
- `sample_data.sql`: Inserts sample data for books, borrowers, loans, and fines.
- `queries.sql`: Contains example SQL queries for common tasks.
- `docs/`: (Optional) ER diagrams or screenshots.

## Example Queries
1. **List Available Books**:
   ```sql
   SELECT Title, Author, AvailableCopies
   FROM Books
   WHERE AvailableCopies > 0;
