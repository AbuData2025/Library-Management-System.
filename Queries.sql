SELECT Title, Author, AvailableCopies
FROM Books
WHERE AvailableCopies > 0;

SELECT l.LoanID, b.Title, br.FirstName, br.LastName, l.DueDate
FROM Loans l
JOIN Books b ON l.BookID = b.BookID
JOIN Borrowers br ON l.BorrowerID = br.BorrowerID
WHERE l.DueDate < CURRENT_DATE AND l.ReturnDate IS NULL;

SELECT br.BorrowerID, br.FirstName, br.LastName, SUM(f.Amount) AS TotalFines
FROM Borrowers br
JOIN Loans l ON br.BorrowerID = l.BorrowerID
JOIN Fines f ON l.LoanID = f.LoanID
WHERE f.PaidStatus = FALSE
GROUP BY br.BorrowerID, br.FirstName, br.LastName;

UPDATE Books
SET AvailableCopies = AvailableCopies - 1
WHERE BookID = 1;