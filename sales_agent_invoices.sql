-- 1. `sales_agent_invoices.sql`: Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.

SELECT e.FirstName, e.LastName, i.*
FROM Customer c, Employee e, Invoice i
WHERE c.SupportRepId = e.EmployeeId
AND c.CustomerId = i.CustomerId