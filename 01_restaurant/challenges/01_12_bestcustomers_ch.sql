-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

.tables

.schema


-- will need the customer name and email from the customers table. 
-- will need info from the orders table with the cust id, prob just group by cust id and count order ids

select DISTINCT Customers.FirstName, Customers.LastName, Customers.Email, count(Orders.OrderID) AS Count
from Customers
join Orders on Orders.CustomerID = Customers.CustomerID
group by Orders.CustomerID
order by Count DESC
limit 6;










-- .tables

-- .schema Orders
-- .schema CustomersDishes

-- select Customers.CustomerID, Customers.FirstName, Customers.LastName, Customers.Email, count(Orders.OrderID) as Count
-- FROM Orders
-- JOIN Customers
-- ON Orders.CustomerID = Customers.CustomerID
-- GROUP BY Orders.CustomerID
-- ORDER BY Count DESC
-- LIMIT 5;