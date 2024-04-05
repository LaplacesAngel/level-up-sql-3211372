-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.

select * from books
where BookID not in 
(select BookID from Loans
where ReturnedDate is null)
and Published BETWEEN 1890 and 1899
order by title;
































-- .schema

-- select Books.Title, Books.Author, Books.Published, Books.BookID, Books.Barcode, Loans.ReturnedDate
-- from Books
-- join Loans on Loans.BookID = Books.BookID
-- where Books.Published >= 1890 
-- and Books.Published <= 1899
-- -- and Loans.ReturnedDate is not null
-- -- group by Books.Barcode
-- and Books.Title = 'The Time Machine'
-- order by Books.Published asc, Books.Title desc, Books.Barcode desc;

-- select Books.Title, Books.Author, Books.Published, Books.BookID, Books.Barcode
-- from Books
-- where Books.BookID in 
-- (select Loans.BookID
-- from Loans
-- where Loans.ReturnedDate is not null)
-- and Books.Title = 'The Time Machine';




























-- select Books.Title, Books.Author, Books.Barcode, Books.BookID, Books.Published
-- from Books
-- where Books.BookID not in (
-- select Loans.BookID
-- from Loans
-- where Loans.ReturnedDate is NULL)
-- and Books.Published BETWEEN 1890 and 1899
-- order by Books.Title;

-- select Books.Title, Books.Author, Books.Barcode, Books.BookID, Books.Published
-- from Books
-- where Books.Published BETWEEN 1890 and 1899
-- and (Books.BookID not in 
--  (select Loans.BookID
--  from Loans
--  where Loans.ReturnedDate is NULL))
-- order by Books.Title;