-- 1. `top_agent.sql`: Which sales agent made the most in sales over all?

SELECT em.FirstName, em.LastName, max(i.TotalSales) AS '2009 best seller'
FROM (
  SELECT em.FirstName, em.LastName, printf('%.2f', sum(i.Total)) AS 'TotalSales'
  FROM Employee em, Invoice i, Customer c
  WHERE i.CustomerId = c.CustomerId
  AND c.SupportRepId = em.EmployeeId
  GROUP BY em.EmployeeId) i, Employee em, Customer c
WHERE c.SupportRepId = em.EmployeeId