-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

-- .tables

-- .schema

select Title, count(Title) AS count
from Books
where Title = 'Dracula';