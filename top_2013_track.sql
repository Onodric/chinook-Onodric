-- 1. `top_2013_track.sql`: Provide a query that shows the most purchased track of 2013.

-- There Are 442 tied at 1 purchase! MAX() would only return ONE, the last one on an unsorted list, and therefore be unusable. I return the top entry though.

SELECT t.Name, count(il.TrackId) AS 'Times Purchased'
FROM Track t, Invoice i, InvoiceLine il
WHERE il.TrackId = t.TrackId
AND il.InvoiceId = i.InvoiceId
AND i.InvoiceDate BETWEEN date('2013-01-01') AND date('2013-12-31')
GROUP BY il.TrackId
ORDER BY count(il.TrackId) DESC
LIMIT 1