-- Add a customer to the restaurant's loyalty program.

-- Use the following information to create a record:
-- Anna Smith (asmith@samoca.org)
-- 479 Lapis Dr., Memphis, TN
-- Phone: (555) 555-1212; Birthday: July 21, 1973

.schema --indent Customers

insert into Customers (FirstName, LastName, Email, Address, City, State, Phone, Birthday)
VALUES ('Anna', 'Smith', 'asmith@samoca.org', '479 Lapis Dr.', 'Memphis', 'TN', '(555) 555-1212', 'July 21, 1973');

select * from Customers
where FirstName = 'Anna';

delete from Customers
where CustomerID = 101;

SELECT * from Customers
ORDER by CustomerID
DESC;