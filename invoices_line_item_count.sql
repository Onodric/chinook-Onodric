-- 1. `invoices_line_item_count.sql`: Provide a query that shows all Invoices but includes the # of invoice line items.

SELECT i.*, count(il.InvoiceLineId) AS '# of Line Items'
FROM Invoice i, InvoiceLine il
WHERE i.InvoiceId = il.InvoiceId
GROUP BY il.InvoiceId
ORDER BY il.InvoiceId