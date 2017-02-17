-- 1. `total_sales_{year}.sql`: What are the respective total sales for each of those years?

SELECT printf('%.2f', sum(i.Total))
AS InvoiceTotal
FROM Invoice i
WHERE i.InvoiceDate
BETWEEN date('2009-01-01') AND date('2009-12-31');