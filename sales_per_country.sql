-- 1. `sales_per_country.sql`: Provide a query that shows the total sales per country.

SELECT c.Country, printf('%.2f', sum(i.Total)) AS 'Total Sales'
FROM Customer c, Invoice i
WHERE c.CustomerId = i.CustomerId
GROUP BY c.Country