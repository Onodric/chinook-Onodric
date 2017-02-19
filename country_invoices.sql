-- 1. `country_invoices.sql`: Provide a query that shows the # of invoices per country. HINT: [GROUP BY](http://www.sqlite.org/lang_select.html#resultset)

SELECT cu.Country, count(i.InvoiceId) AS '# of Invoices'
FROM Customer cu, Invoice i
WHERE i.CustomerId = cu.CustomerId
GROUP BY cu.Country
ORDER BY cu.Country