-- 1. `top_country.sql`: Which country's customers spent the most?

SELECT c.Country, printf('%.2f', sum(i.Total)) AS 'Total Sales'
FROM Customer c, Invoice i
WHERE c.CustomerId = i.CustomerId
GROUP BY c.Country
ORDER BY sum(i.Total) DESC
LIMIT 1