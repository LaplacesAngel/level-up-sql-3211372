-- Remove incorrect information from the database.

-- A customer named Brandais has notified us he won't 
-- be able to keep his Friday reservation. 

.tables

.schema Reservations

SELECT Customers.CustomerID, Reservations.CustomerID, Customers.FirstName, Reservations.ReservationID, Reservations.Date
from Customers
JOIN Reservations
ON Reservations.CustomerID = Customers.CustomerID
where Customers.FirstName = 'Brandais'
ORDER BY Date;


DELETE FROM Reservations
where ReservationID = 1999

UPDATE Reservations
SET Date = NULL
WHERE CustomerID = 86
AND DATE = 2018-07-07;