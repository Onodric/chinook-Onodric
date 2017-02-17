-- 1. `total_invoices_{year}.sql`: How many Invoices were there in 2009 and 2011? 

SELECT count(*)
FROM Invoice i
WHERE i.InvoiceDate
BETWEEN date('2009-01-01') AND date('2009-12-31')