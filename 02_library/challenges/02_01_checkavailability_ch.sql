-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.


select(
select count(*)
From Books
where Books.Title = 'Dracula')
-
(select count(*)
from loans
join Books on Books.BookID = Loans.LoanID
where Books.Title = 'Dracula' 
AND  Loans.ReturnedDate IS NULL)
as Copies_Available
;