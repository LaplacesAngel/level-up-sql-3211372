-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

.tables

.schema --indent OrdersDishesID

-- OrdersDishes is a junction table / join / bridge table

SELECT CustomerID
FROM Customers
WHERE FirstName = 'Loretta'
  AND LastName = 'Hundey'
  AND Address = '6939 Elka Place';

SELECT DishID 
FROM Dishes
WHERE Name = 'House Salad'

SELECT DishID 
FROM Dishes
WHERE Name = 'Mini Cheeseburgers'

SELECT DishID 
FROM Dishes
WHERE Name = 'Tropical Blue Smoothie'

INSERT INTO Orders
(CustomerID, OrderDate)
VALUES (( SELECT CustomerID
                FROM Customers
                WHERE FirstName = 'Loretta'
                  AND LastName = 'Hundey'
                  AND Address = '6939 Elka Place'),
                  '2022-09-20 14:00:00');

select * from orders 
where CustomerID = ( SELECT CustomerID
                FROM Customers
                WHERE FirstName = 'Loretta'
                  AND LastName = 'Hundey'
                  AND Address = '6939 Elka Place')
AND
OrderDate = '2022-09-20 14:00:00';


--1
insert into OrdersDishes 
(OrderID, DishID)
VALUES ((select OrderID from orders 
        where CustomerID = ( SELECT CustomerID
                        FROM Customers
                        WHERE FirstName = 'Loretta'
                          AND LastName = 'Hundey'
                          AND Address = '6939 Elka Place')
        AND
        OrderDate = '2022-09-20 14:00:00'),
        (SELECT DishID 
        FROM Dishes
        WHERE Name = 'House Salad')), ;


--2
insert into OrdersDishes 
(OrderID, DishID)
VALUES ((select OrderID from orders 
        where CustomerID = ( SELECT CustomerID
                        FROM Customers
                        WHERE FirstName = 'Loretta'
                          AND LastName = 'Hundey'
                          AND Address = '6939 Elka Place')
        AND
        OrderDate = '2022-09-20 14:00:00'),
        (SELECT DishID 
        FROM Dishes
        WHERE Name = 'Mini Cheeseburgers'));

--3
insert into OrdersDishes 
(OrderID, DishID)
VALUES ((select OrderID from orders 
        where CustomerID = ( SELECT CustomerID
                        FROM Customers
                        WHERE FirstName = 'Loretta'
                          AND LastName = 'Hundey'
                          AND Address = '6939 Elka Place')
        AND
        OrderDate = '2022-09-20 14:00:00'),
        (SELECT DishID 
        FROM Dishes
        WHERE Name = 'Tropical Blue Smoothie'));


SELECT SUM(Dishes.Price)
FROM Dishes
INNER JOIN OrdersDishes
ON Dishes.DishID = OrdersDishes.DishID
INNER JOIN Orders
ON OrdersDishes.OrderID = Orders.OrderID
INNER JOIN Customers
On Orders.CustomerID = Customers.CustomerID
WHERE Dishes.DishID = (SELECT DishID FROM OrdersDishes 
                       WHERE OrderID = (select OrderID from orders 
              where CustomerID = ( SELECT CustomerID
                FROM Customers
                WHERE FirstName = 'Loretta'
                  AND LastName = 'Hundey'
                  AND Address = '6939 Elka Place')
AND
OrderDate = '2022-09-20 14:00:00'));


SELECT SUM(Price)
FROM Dishes
WHERE DishID = 20
OR DishID = 4
OR DishID = 7

SELECT DishID 
FROM OrdersDishes
where OrderID = (SELECT OrderID
from orders
where CustomerID = (SELECT CustomerID
FROM Customers
WHERE FirstName = 'Loretta'
  AND LastName = 'Hundey'
  AND Address = '6939 Elka Place')
and OrderDate = '2022-09-20 14:00:00');

SELECT OrderID
from orders
where CustomerID = (SELECT CustomerID
FROM Customers
WHERE FirstName = 'Loretta'
  AND LastName = 'Hundey'
  AND Address = '6939 Elka Place')
and OrderDate = '2022-09-20 14:00:00';

SELECT CustomerID
FROM Customers
WHERE FirstName = 'Loretta'
  AND LastName = 'Hundey'
  AND Address = '6939 Elka Place';

