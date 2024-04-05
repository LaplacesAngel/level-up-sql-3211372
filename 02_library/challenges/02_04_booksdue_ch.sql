-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

.schema

select Loans.DueDate, Loans.ReturnedDate, Books.Title, Patrons.FirstName, Patrons.LastName, Patrons.LastName
from Loans
join Patrons on Patrons.PatronID = Loans.PatronID
join Books on Books.BookID = Loans.BookID
where Loans.DueDate = '2022-07-13'
and Loans.ReturnedDate IS NULL;

-- select * from loans;