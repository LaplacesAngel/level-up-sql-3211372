-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

-- Report 2: Show the five books that have been
-- checked out the most.



select Published AS Year, count(DISTINCT(Title)) as Books_Published, group_concat(DISTINCT(Title)) as Titles
from books
group by Published
order by Books_Published desc limit 5;


select Books.Title, count(Loans.BookID) as Times_Checked_Out, group_concat(DISTINCT(Loans.BookID)) as IDs
from Books
join Loans on Loans.BookID = Books.BookID
group by Books.Title
ORDER BY Times_Checked_Out desc;
















-- select 
-- count(DISTINCT(title)) as title_count, Published, group_concat(DISTINCT(title))
-- from books
-- group by Published
-- order by title_count desc
-- limit 5
-- ;


-- select count(Loans.LoanID) as loan_count, Books.Title, group_concat(DISTINCT(Books.BookID))
-- from Loans
-- join Books on Books.BookID = Loans.BookID
-- group by books.Title
-- order by loan_count desc
-- limit 5
-- ;