-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
-- Create a report showing appetizers and beverages.
-- Create a report with all items except beverages.

SELECT name, CAST(round(price) as INTEGER) as price 
FROM dishes 
ORDER BY price;

select avg(price) 
from dishes;
PRAGMA table_info(dishes);

select name, type, price, Description
from dishes 
where type = 'Appetizer' or type = 'Beverage'
order by type;

select name, type, price 
from dishes 
where type != 'Beverage'
order by type;