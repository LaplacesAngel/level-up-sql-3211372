-- Prepare a report of the library patrons
-- who have checked out the fewest books.

select count(Loans.LoanID) as count, Patrons.FirstName, Patrons.Email
from Loans
join Patrons on Patrons.PatronID = Loans.PatronID
group by Patrons.PatronID
order by count asc
limit 15;