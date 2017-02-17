-- 1. `unique_invoice_countries.sql`: Provide a query showing a unique/distinct list of billing countries from the Invoice table.

SELECT DISTINCT c.Country
FROM Customer c, Invoice i
WHERE c.CustomerId = i.CustomerId