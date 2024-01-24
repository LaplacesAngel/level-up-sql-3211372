-- Generate a list of customer information.
select * from customers;

-- Show their first name, last name, and email address.
select FirstName,  LastName,  Email from customers;

-- Sort the list of results by last name.

select FirstName,  LastName, Email 
from customers 
order by LastName;