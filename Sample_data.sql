-- Populate Books Table
INSERT INTO Books (Title, Author, Genre, Publication_Year, ISBN, Available_Copies) VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 1925, '9780743273565', 3),
('1984', 'George Orwell', 'Dystopian', 1949, '9780451524935', 2),
('To Kill a Mockingbird', 'Harper Lee', 'Fiction', 1960, '9780446310789', 4),
('Pride and Prejudice', 'Jane Austen', 'Romance', 1813, '9780141439518', 2),
('The Catcher in the Rye', 'J.D. Salinger', 'Fiction', 1951, '9780316769488', 1),
('The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 1937, '9780345339683', 5),
('Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 'Non-Fiction', 2011, '9780062316097', 3),
('The Alchemist', 'Paulo Coelho', 'Fiction', 1988, '9780061122415', 2),
('Dune', 'Frank Herbert', 'Science Fiction', 1965, '9780441172719', 3),
('Educated', 'Tara Westover', 'Memoir', 2018, '9780399590504', 1);

-- Populate Borrowers Table
INSERT INTO Borrowers (First_Name, Last_Name, Email, Phone, RegistrationDate) VALUES
('John', 'Smith', 'john.smith@email.com', '555-0101', '2025-01-15'),
('Emma', 'Johnson', 'emma.j@email.com', '555-0102', '2025-02-20'),
('Michael', 'Brown', 'michael.brown@email.com', '555-0103', '2025-03-10'),
('Sarah', 'Davis', 'sarah.davis@email.com', '555-0104', '2025-04-05'),
('David', 'Wilson', 'david.w@email.com', '555-0105', '2025-05-12'),
('Laura', 'Martinez', 'laura.m@email.com', '555-0106', '2025-06-18'),
('James', 'Taylor', 'james.taylor@email.com', '555-0107', '2025-07-01'),
('Emily', 'Anderson', 'emily.a@email.com', '555-0108', '2025-07-15'),
('Robert', 'Thomas', 'robert.thomas@email.com', '555-0109', '2025-07-20'),
('Sophia', 'Lee', 'sophia.lee@email.com', '555-0110', CURRENT_DATE);

-- Populate Loans Table
INSERT INTO Loans (Book_ID, Borrower_ID, Loan_Date, Due_Date, Return_Date) VALUES
(1, 1, '2025-07-01', '2025-07-15', '9999-12-31'), -- John borrowed The Great Gatsby, not returned
(2, 2, '2025-07-05', '2025-07-19', '2025-07-10'), -- Emma returned 1984
(3, 3, '2025-07-10', '2025-07-24', '9999-12-31'), -- Michael borrowed To Kill a Mockingbird
(4, 4, '2025-07-15', '2025-07-29', '9999-12-31'), -- Sarah borrowed Pride and Prejudice
(6, 5, '2025-07-20', '2025-08-03', '2025-07-25'), -- David returned The Hobbit
(8, 6, '2025-07-25', '2025-08-08', '9999-12-31'); -- Laura borrowed The Alchemist

-- Populate Fines Table
INSERT INTO Fines (LoanID, Amount, PaidStatus) VALUES
(1, 17.00, FALSE),
(3, 8.00, FALSE),
(4, 3.00, TRUE);
