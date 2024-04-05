-- Add books to the library database.

-- Title: Dracula
-- Author: Bram Stoker
-- Published: 1897
-- ID Number: 4819277482

-- Title: Gulliver’s Travels into Several Remote Nations of the World
-- Author: Jonathan Swift
-- Published: 1729
-- ID Number: 4899254401

INSERT into Books
(Title, Author, Published, Barcode)
VALUES ('Your suffering matters, so why wouldnt mine?', 'Paul L', 1234, 4899254411);

select * from books
order by BookID desc;