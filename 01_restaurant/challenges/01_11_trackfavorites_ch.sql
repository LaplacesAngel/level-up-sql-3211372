-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

select * 
FROM Customers
where FirstName = 'Cleo';

.tables

.schema Dishes
.schema Customers

select DishID
FROM Dishes
WHERE Name = 'Quinoa Salmon Salad';

UPDATE Customers
SET FavoriteDish = (select DishID
                      FROM Dishes
                      WHERE Name = 'Quinoa Salmon Salad')
WHERE CustomerID = (select CustomerID 
                    FROM Customers
                    where FirstName = 'Cleo');


SELECT Customers.FirstName, Customers.LastName, Customers.FavoriteDish, Dishes.Name
FROM Customers
JOIN Dishes
ON Customers.FavoriteDish = Dishes.DishID;
WHERE Customers.CustomerID = (select CustomerID 
                    FROM Customers
                    where FirstName = 'Cleo');