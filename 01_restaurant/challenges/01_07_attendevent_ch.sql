-- Register a customer for our Anniversary event.

-- The customer 'atapley2j@kinetecoinc.com' will be in
-- attendance, and will bring 3 friends.

.tables

.schema --indent Customers
.schema --indent Responses

select CustomerID
from Customers
where Email = 'atapley2j@kinetecoinc.com';

INSERT INTO Responses
(CustomerID, PartySize)
VALUES (
  (select CustomerID
  from Customers
  where email = 'atapley2j@kinetecoinc.com'),
 4)


select * from Responses;