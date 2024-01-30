-- Create a table in the database to store customer
-- responses to our anniversary invitation.

-- Associate a customer's ID number with the number of people
-- they plan to bring in their party.

-- Hint: SQLite offers the INTEGER and REAL datatypes

.tables

.schema --indent Customers

CREATE TABLE IF NOT EXISTS Responses (
CustomerID INT,
PartySize INT
);

.schema --indent Responses