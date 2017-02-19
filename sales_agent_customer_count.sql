-- 1. `sales_agent_customer_count.sql`: Provide a query that shows the count of customers assigned to each sales agent.

SELECT em.FirstName, em.LastName, count(c.CustomerId) AS '# of Accounts'
FROM Employee em, Customer c
WHERE em.EmployeeId = c.SupportRepId
GROUP BY em.EmployeeId