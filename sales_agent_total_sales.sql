-- 1. `sales_agent_total_sales.sql`: Provide a query that shows total sales made by each sales agent.

SELECT em.FirstName, em.LastName, printf('%.2f', sum(i.Total)) AS 'Sales Total'
FROM Employee em, Invoice i, Customer c
WHERE i.CustomerId = c.CustomerId
AND c.SupportRepId = em.EmployeeId
GROUP BY em.LastName
ORDER BY sum(i.Total) DESC