-- Return three books to the library using
-- their bar codes.
-- Return date: July 5, 2022
-- Book 1: 6435968624
-- Book 2: 5677520613
-- Book 3: 8730298424

.schema 

update Loans
set ReturnedDate ='2022-07-05'
where Loans.BookID in 
(select Books.BookID 
FROM Books
where Books.Barcode in (6435968624, 5677520613, 8730298424))
and Loans.ReturnedDate is NULL;

select Books.Barcode, Books.Title, Loans.ReturnedDate
from Books
join Loans on Loans.BookId = Books.BookId
where Books.Barcode in (6435968624, 5677520613, 8730298424);