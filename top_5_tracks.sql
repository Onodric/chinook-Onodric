-- 1. `top_5_tracks.sql`: Provide a query that shows the top 5 most purchased tracks over all.

-- Again there are 256 tracks tied at 2 purchases each. I truncated at 5 though

SELECT t.Name, count(il.TrackId) AS 'Times Purchased'
FROM Track t, Invoice i, InvoiceLine il
WHERE il.TrackId = t.TrackId
AND il.InvoiceId = i.InvoiceId
GROUP BY il.TrackId
ORDER BY count(il.TrackId) DESC
LIMIT 5