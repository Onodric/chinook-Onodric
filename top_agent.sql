-- 1. `top_agent.sql`: Which sales agent made the most in sales over all?

SELECT em.FirstName, em.LastName, printf('%.2f', sum(i.Total)) AS 'Sales Total'
FROM Employee em, Invoice i, Customer c
WHERE i.CustomerId = c.CustomerId
AND c.SupportRepId = em.EmployeeId
GROUP BY em.LastName
ORDER BY sum(i.Total) DESC