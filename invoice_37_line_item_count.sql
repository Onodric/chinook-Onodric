-- 1. `invoice_37_line_item_count.sql`: Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.

SELECT count(il.InvoiceLineId)
FROM InvoiceLine il
Where il.InvoiceId = 37